import 'package:flutter/material.dart';
import 'package:hw_login_page/widget/CustomButton.dart';
import 'package:hw_login_page/widget/textField.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F3F3),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Lets Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                      Text(
                        "Create an account to ..... to get all feature",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Column(
                          children: [
                            CustomTextField(
                              keyWord: true,
                              obSecure: false,
                              hintText: "Name",
                              labelText: "Enter your Full Name..",
                              icons: Icon(Icons.account_box_outlined),
                            ),
                            CustomTextField(
                              keyWord: true,
                              obSecure: false,
                              hintText: "Email",
                              labelText: "Enter your Email..",
                              icons: Icon(Icons.email),
                            ),
                            CustomTextField(
                              keyWord: false,
                              obSecure: false,
                              hintText: "Phone No",
                              labelText: "Enter your Phone No..",
                              icons: Icon(Icons.phone),
                            ),
                            CustomTextField(
                              keyWord: true,
                              obSecure: true,
                              hintText: "Password",
                              labelText: "Enter your Password..",
                              icons: Icon(Icons.vpn_key),
                            ),
                            CustomTextField(
                              keyWord: true,
                              obSecure: true,
                              hintText: "Confirm Password",
                              labelText: "Confirm Your Password..",
                              icons: Icon(Icons.vpn_key),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        onPressed: () {},
                        title: "Create",
                        color: Color(0xffCD113B),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Login here",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFF4848),
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
