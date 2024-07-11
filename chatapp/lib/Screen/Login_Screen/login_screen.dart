import 'package:chatapp/Screen/Navigation_Barscreen/navigation_bar.dart';
import 'package:chatapp/common/button.dart';
import 'package:chatapp/common/comon_text.dart';
import 'package:chatapp/common/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Wlecome to Chat App",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Log In",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Textformfield(
                textInputType: TextInputType.emailAddress,
                hinttext: 'Email',
                textEditingController: emailcontroler,
                contentpadding: 10,
                fontWeight: FontWeight.normal,
                circularradius: 10),
            const SizedBox(
              height: 15,
            ),
            Textformfield(
                textInputType: TextInputType.emailAddress,
                hinttext: 'Password',
                textEditingController: passwordcontroler,
                contentpadding: 10,
                fontWeight: FontWeight.normal,
                circularradius: 10),
            const SizedBox(
              height: 15,
            ),
            Botton(
                tittle: const Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                height: 40,
                colors: greencolor,
                bordercolor: Colors.white,
                ontap: () async {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Navigationbarscreen();
                    },
                  ));
                }),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Don't have an Account?   ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: greencolor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            // Botton(
            //     tittle: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Image.asset(
            //           "assets/images/googlelogo.png",
            //           fit: BoxFit.fitHeight,
            //           height: 30,
            //         ),
            //         const SizedBox(
            //           width: 15,
            //         ),
            //         const Text(
            //           "Sign in with Google",
            //           style: TextStyle(fontSize: 16),
            //         )
            //       ],
            //     ),
            //     height: 40,
            //     colors: Colors.transparent,
            //     bordercolor: Colors.black,
            //     ontap: () {}),
          ],
        ),
      ),
    );
  }
}
