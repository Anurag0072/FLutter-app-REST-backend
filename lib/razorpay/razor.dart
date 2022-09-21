import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/razorpay//ModelOrderId.dart';
import 'package:gondwana_club/razorpay//servicewrapper.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class razor extends StatefulWidget {
  @override
  _razorState createState() => _razorState();
}

class _razorState extends State<razor> {
  late Razorpay _razorpay;
  TextEditingController controller = TextEditingController();
  TextEditingController desc = TextEditingController();

  final sessionUserData = GetStorage();
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    String memberNumber = sessionUserData.read('loginId');
    print('Member Num = '+memberNumber);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text("Razorpay Payment Gateway"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "amount", icon: Icon(Icons.monetization_on)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: desc,
                decoration: InputDecoration(
                    hintText: "description", icon: Icon(Icons.description)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  int amount = int.parse(controller.text) * 100;
                  _getorderId("123456", amount.toString(), 'description');
                },
                child: Text(
                  "Start Payment",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }

  _getorderId(String txnid, String amount, String description) async {
    print(" call start here");
    servicewrapper wrapper = new servicewrapper();
    Map<String, dynamic> response = await wrapper.call_order_api(txnid, amount, description);
    final model = ModelOrderId.fromJson(response);
    print(" response here");
    if (model != null) {
      if (model.status == 1) {
        //res_length = model.information.length.toString();
        print("order id is -" + model.Information.toString());
        _startPayment(model.Information.toString(), amount, description);
      } else {
        print("status Zero");
      }
    } else {
      print("model null for category api");
    }
  }

  _startPayment(String orderid, String amount, String description) {
    var options = {
      'key': 'rzp_test_nbcwvZ1eymLcdg',//'rzp_live_8ysSIUR9fjf6cw',
      'amount': amount,
      'order_id': orderid,
      'name': '${sessionUserData.read('MemberName')}',
      'description': description,
      'prefill': {'Mobile': '${sessionUserData.read('MobileNumber')}', 'email': '${sessionUserData.read('EmailAddress')}'}
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print(" razorpay error" + e.toString());
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("RazorSuccess : " + response.paymentId! + " == " + response.orderId!);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("RazorpayError : " +
        response.code.toString() +
        " == " +
        response.message!);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print("RazorWallet : " + response.walletName!);
  }
}
