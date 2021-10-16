import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen_resuablefunction/shared/components/companents.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller_1 = TextEditingController();

  TextEditingController controller_2 = TextEditingController();
  bool ispassword=true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              padding: EdgeInsetsDirectional.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultFormField(
                    onchange: (value  ){
                      print (value);
                    },
                    onfieldsubmitted: (value){
                      print (value);
                    },
                    controller: controller_1,
                    textKeyboard: TextInputType.emailAddress,
                    prefix: Icons.email,
                    textLabel: 'Email',
                    ispassword: true,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "email address cannot be empty ";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultFormField(
                      controller: controller_2,
                      textKeyboard: TextInputType.visiblePassword,
                      prefix: Icons.lock,
                      textLabel: 'Password',
                      ispassword: ispassword,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty ";
                        }
                        return null;
                      },
                      suffixpressed: (){
                        setState(() {
                          ispassword=!ispassword;
                        });

                      },
                      suffix:  ispassword? Icons.visibility :Icons.visibility_off
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  DefaultButtton(
                      text: "login",
                      raduis: 20,
                      fun: () {
                        if (formKey.currentState!.validate()) {
                          print(controller_1.text);

                          print(controller_2.text);
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultButtton(
                    text: 'ReGister ',
                    isupper: false,
                    raduis: 20,
                    fun: () {
                      print("ReGister Now");
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don\'t have an account  "),
                      TextButton(
                          onPressed: () {}, child: Text(" Regrist here  ")),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //),
        ),
      ),
    );
  }
}
