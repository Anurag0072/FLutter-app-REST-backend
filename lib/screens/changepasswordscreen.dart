import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import '../global_style/style.dart';
import 'reset_password_screen.dart';
import '../model/changepasswordd.dart';
import '../rest_api/Changepassapi.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  ChangePasswordState createState() => ChangePasswordState();
}

class ChangePasswordState extends State<ChangePasswordScreen> {
  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController memberIdController = TextEditingController();
  TextEditingController NewPasswordController = TextEditingController();
  final sessionUserData = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //sessionUserData.write('loginId', value.MemberNumber),
    String MemberNumber = sessionUserData.read('loginId');
    print(MemberNumber);
    memberIdController.text = MemberNumber;
  }

  Future<Change>? futureForget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Change Password'),
        backgroundColor: AppStyle.appBarColor,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Form(
          key: formGlobalKey,
          child: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
              //   child: TextFormField(
              //     //obscureText: true,
              //     keyboardType: TextInputType.text,
              //     controller: memberIdController,
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(),
              //       labelText: 'Member Number',
              //       hintText: 'Enter Member Number',
              //     ),
              //
              //     validator: (value) {
              //       if (value == null || value.isEmpty) {
              //         return 'Please enter MemberId';
              //       }
              //       return null;
              //     },
              //   ),
              // ),
              Text(sessionUserData.read('loginId')),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 4, 30, 4),
                child: TextFormField(
                  textCapitalization: TextCapitalization.characters,
                  //obscureText: true,
                  keyboardType: TextInputType.text,
                  controller: NewPasswordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter New password',
                    hintText: 'Enter new Password',
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter MemberId';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Change Password'),
                onPressed: () {
                  if (formGlobalKey.currentState!.validate()) {
                    setState(() {
                      print("before _changeApiCall");
                      _changeApiCall();
                    });
                    Fluttertoast.showToast(
                        msg: "Success",  // message
                        toastLength: Toast.LENGTH_SHORT, // length
                        gravity: ToastGravity.BOTTOM,    // location
                        timeInSecForIosWeb: 1 ,
                        backgroundColor: Color.fromARGB(255, 78, 5, 0),
                        textColor: Colors.white,
                        fontSize: 16.0             // duration
                    );
                  }
                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(AppStyle.appBarColor),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    textStyle:
                    MaterialStateProperty.all(TextStyle(fontSize: 20))),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _changeApiCall() {
    print('in _changeApiCall');
    String MemberNumber  = memberIdController.text;
    String Newpassword = NewPasswordController.text;
    print('in _changeApiCall MemberNumber = '+MemberNumber);
    print('in _changeApiCall MemberNumber = '+Newpassword);
    // futureForget =
    changeMethod(MemberNumber, Newpassword);
  }
}
