import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gondwana_club/global_style/style.dart';
import 'package:get/get.dart';
import 'package:gondwana_club/main1.dart';
import '../model/login.dart';
import '../rest_api/login_api.dart';
import 'forget_password_screen.dart';
import 'home_screen.dart';
import 'signup_screen.dart';

class LoginPageScreen extends StatefulWidget {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await _showExitBottomSheet(context);
    return exitResult ?? false;
  }

  @override
  LoginPageState createState() => LoginPageState();

  
}

_showExitBottomSheet(BuildContext context) {
}

class LoginPageState extends State<LoginPageScreen> {
  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController memberIdController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
  bool _isObscure = true;

  Future<Login>? futureLogin;

  final sessionUserData = GetStorage();

    Future<bool?> _showExitBottomSheet(BuildContext context) async {
    return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: _buildBottomSheet(context),
        );
      },
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          'Do you really want to exit the app?',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('CANCEL'),
            ),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('YES EXIT'),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    sessionUserData.writeIfNull('isLogged', false);
    Future.delayed(Duration.zero, () async{
      checkIfLogin();
    });
  }
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        body: Form(
          key: formGlobalKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 140,
                    child: Image.asset('assets/app_logo.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  textCapitalization: TextCapitalization.characters,
                  keyboardType: TextInputType.text,
                  controller: memberIdController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Member Number',
                    hintText: 'Enter Member Number',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Member Number';
                    }
                    return null;
                  },
                ),
                ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  textCapitalization: TextCapitalization.characters,
                  obscureText: _isObscure,
                  keyboardType: TextInputType.text,
                  controller: pswdController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                ),
                ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ForgetPasswordScreen()));
                  // Navigator.push(context, MaterialPageRoute(builder: (_) => RestPasswordScreen(memberId: memberIdController.text)));
                },
                //Forgot Password Textwidget
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: AppStyle.appBarColor, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: AppStyle.appBarColor,
                    borderRadius: BorderRadius.circular(20)),

                    //Login button code
                child:ElevatedButton(
                  onPressed: () {
                    if (formGlobalKey.currentState!.validate()) {
                            setState(() {
                              print("before _loginApiCall");
                              _loginApiCall();
                            });
                          }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: (AppStyle.appBarColor),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 200,
                      height: 100,
                      alignment: Alignment.center,
                      child: const Text(
                        'Login',
                        style:
                            const TextStyle(fontSize: 24, fontStyle: FontStyle.normal),
                      ),
                      ),
                    ),
                ),
                //  TextButton(
                //   onPressed: () {

                //     if (formGlobalKey.currentState!.validate()) {

                //       setState(() {
                //         print("before _loginApiCall");
                //         _loginApiCall();
                //       });

                //     }
                //   },
                  
                //   child: Text('Login',
                //     style: TextStyle(color: Colors.white, fontSize: 25),
                //   ),
                // ),
              ),
              // Register TextButton
              Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20, color: AppStyle.appBarColor),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignupPage()));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _loginApiCall() {
    print('in _loginApiCall');
    String username  = memberIdController.text;
    String password = pswdController.text;
    print('in _loginApiCall username = '+username);
    print('in _loginApiCall password = '+password);
    futureLogin = loginMethod(username,password);

    String memberCategory;
    String memberNum;
    String portalPassword;
    futureLogin!.then((value) => {
      memberCategory = value.MemberCategory,

      memberNum = value.MemberNumber!,
      portalPassword = value.PortalPassword!,

      if(memberNum != username || portalPassword != password){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.Message))),
      }
      else if(memberCategory != 'Primary'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.Message))),

      }
      else if ( username == value.MemberNumber &&  password == value.PortalPassword){

          sessionUserData.write('isLogged', true),
          sessionUserData.write('loginId', value.MemberNumber),
          sessionUserData.write('MemberId', value.MemberId),
          sessionUserData.write('MemberName', value.MemberName),
          sessionUserData.write('MemberCode', value.MemberCode),

          sessionUserData.write('PortalPassword', value.PortalPassword),
          sessionUserData.write('MemberCategoryId', value.MemberCategoryId),
          sessionUserData.write('MemberCategory', value.MemberCategory),
          sessionUserData.write('IsActive', value.IsActive),
          sessionUserData.write('MemberTypeId', value.MemberTypeId),

          sessionUserData.write('MemberTypeName', value.MemberTypeName),
          sessionUserData.write('City', value.City),
          sessionUserData.write('MobileNumber', value.MobileNumber),
          sessionUserData.write('EmailAddress', value.EmailAddress),
          sessionUserData.write('ActiveFrom', value.ActiveFrom),

          print('value.MemberTypeName = '+value.MemberTypeName),

            print('in Success'),
            
          Navigator.push(context, MaterialPageRoute(builder: (_) => AppBottomNav())), // moved to main home screen from botttom navigation bar (App Bar)
         // Get.offAll(HomeScreen()),
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.Message))),
      }
      else{
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.Message))),
          }
  });

  }

  void checkIfLogin(){
    sessionUserData.read('isLogged') ? Get.offAll(AppBottomNav()) : Get.offAll(LoginPageState()) ;
  }

  _onWillPop(BuildContext context) {}

}
