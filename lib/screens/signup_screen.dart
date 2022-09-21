import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:gondwana_club/rest_api/login_api.dart';
import 'package:gondwana_club/screens/login_screen.dart';
import 'package:gondwana_club/screens/privacy_screen.dart';
import 'package:gondwana_club/screens/splash_screen.dart';
import '../rest_api/register_api.dart';
import '../model/member_search_param.dart';
import 'package:gondwana_club/model/register.dart';

class SignupPage extends StatefulWidget {


  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  bool agree = false;
  bool btnVisible = false;
  // bool _isLoading = true;
  // PDFDocument ? document;

  void _doSomething() {
    // Do something
  }
  // void initState() {
  //   super.initState();
  //   loadDocument();
  // }
  // loadDocument() async {
  //   document = await PDFDocument.fromAsset('assets/sample.pdf');
  //
  //   setState(() => _isLoading = false);
  // }
  // // changePDF(value) async {
  //   setState(() => _isLoading = true);
  //   if (value == 1) {
  //     // document = await PDFDocument.fromAsset('assets/sample.pdf');
  //   }
  //   //   else {
  //     document = await PDFDocument.fromURL(
  //         "http://www.africau.edu/images/default/sample.pdf");
  //   }
  //   setState(() => _isLoading = false);
  // }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final formGlobalKey = GlobalKey<FormState>();
  late ScaffoldMessengerState scaffoldMessenger;

  TextEditingController firstnameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController emailaddressController = new TextEditingController();
  TextEditingController membernumberController = new TextEditingController();
  TextEditingController mobilenumberController = new TextEditingController();
  TextEditingController remarkController = new TextEditingController();
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');

  Future<Register>? futureRegister;

  @override
  Widget build(BuildContext context) {
    scaffoldMessenger = ScaffoldMessenger.of(context);
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              )),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: AppStyle.appBarColor,
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Text(
                              "To Create an Account",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFormField(
                            controller: firstnameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First Name',
                                hintText: 'Enter valid First Name '),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter First Name';
                              }else{ (nameRegExp.hasMatch(value));
                                return null;
                                }},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFormField(
                            controller: lastnameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'last Name',
                                hintText: 'Enter valid Last Name'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Last Name';
                              }else{ (nameRegExp.hasMatch(value));
                              return value;
                            }},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFormField(
                            controller: membernumberController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Member Number',
                                hintText: 'Enter valid MemberNumber'),
                            validator: (value) {
                              if (value == null && value!.isEmpty) {
                                if (value.length > 4){
                                  return "Enter a valid member number";
                                }else{
                                  return value;
                                }
                                return 'Please enter Member Number';
                              }else{
                                return "MemberNumber cannot be empty";
                              }

                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFormField(
                            controller: mobilenumberController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Mobile Number',
                                hintText: 'Enter your Mobile Number'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                if (value!.length > 10){
                                  return "enter valid 10 digit no.";
                                }else if (value.length < 10){
                                  return 'enter 10 digit mobile number.';
                                }else{
                                  return null;
                                }
                                //return 'Please enter Mobile Number';
                              }else{
                                return "mobile number cannot be  empty!";
                              }

                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFormField(
                            controller: emailaddressController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'EmailAddress',
                                hintText:
                                    'Enter a valid Email Address'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email Address';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextFormField(
                            controller: remarkController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Remark',
                                hintText: 'Enter Remark '),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Remark';
                              }
                              return null;
                            },
                          ),
                        ),
                        Column(children: [
                          Row(
                            children: [
                              Material(
                                child: Checkbox(
                                  value: agree,
                                  onChanged: (value) {
                                    setState(() {
                                      agree = value ?? false;
                                      //agree = value;
                                      btnVisible = agree;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                'I Agree to',
                                overflow: TextOverflow.ellipsis,
                              ),
                              TextButton(
                                child: Text('Terms and Conditions',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppStyle.appBarColor)),
                                onPressed: () {
                                  // changePDF(1);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => PrivacyScreen()));
                                },
                              ),
                              // Container(
                              //   height: 400,
                              //   child: _isLoading
                              //     ? Center(child: CircularProgressIndicator())
                              //     : PDFViewer(document:document),
                              // ),
                            ],
                          ),
                          Visibility(
                              visible: btnVisible,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: AppStyle.appBarColor, // background
                                    onPrimary: Colors.white, // foreground
                                  ),
                                  onPressed: () {
                                    // if (_formKey.currentState!.validate())
                                    //   return;
                                    // Navigator.push(context,
                                    // MaterialPageRoute(builder: (_) => LoginPageScreen()));
                                    // agree ? _doSomething : null;
                                    if (_formKey.currentState!.validate()) {
                                      // setState(() {r
                                      //   print("before _loginApiCall");
                                      //   _loginApiCall();
                                      // });
                                      setState(() {
                                        print("before _registerapicall");
                                        _registerapicall();
                                      });
                                    }
                                    Fluttertoast.showToast(
                                        msg: "Your Request has been sent to Gondwana Club Office. SMS sent successfully",  // message
                                        toastLength: Toast.LENGTH_SHORT, // length
                                        gravity: ToastGravity.BOTTOM,    // location
                                        timeInSecForIosWeb: 1 ,
                                        backgroundColor: Color.fromARGB(255, 78, 5, 0),
                                        textColor: Colors.white,
                                        fontSize: 16.0 ,           // duration
                                        );
                                  },

                                  child: Text(
                                    'REGISTER YOURSELF',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ))),
                        ]),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Already have an account?'),
                            TextButton(
                              child: Text('Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppStyle.appBarColor)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => LoginPageScreen()));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        )
      );
  }

  void _registerapicall() {
    print('in _registerapicall');
    String FirstName = firstnameController.text;
    String LastName = lastnameController.text;
    String EmailAddress = emailaddressController.text;
    String MemberNumber = membernumberController.text;
    String MobileNumber = mobilenumberController.text;
    String Remarks = remarkController.text;
    print('in _registerapicall MemberName = ' + FirstName);
    print('in _registerapicall MemberName = ' + LastName);
    print('in _registerapicall EmailAddress = ' + EmailAddress);
    print('in _registerapicall MobileNumber = ' + MobileNumber);
    print('in _registerapicall MemberNumber = ' + MemberNumber);
    print('in _registerapicall Remarks = ' + Remarks);
    futureRegister =
    RegisterMethod(
        MemberNumber, FirstName, LastName, MobileNumber, EmailAddress, Remarks);

    //String memberNum;
    futureRegister!.then((value) => {
     // memberNum = value.MemberNumber,

      if(MemberNumber != value.MemberNumber ){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.Message))),
      }
      else if(MemberNumber == value.MemberNumber ){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your Request has been sent to Gondwana Club Office. SMS sent successfully"))),
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.Message))),
      }
    });

  }
}
