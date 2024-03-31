import 'package:ecommerce/components/my_button.dart';
import 'package:ecommerce/components/my_textfield.dart';
import 'package:flutter/material.dart';

class ForgotpasswordPage extends StatelessWidget {
  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmpasswordController = TextEditingController();

  ForgotpasswordPage({super.key});

  // login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //   logo
                Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
            
                const SizedBox(
                  height: 25,
                ),
            
                //   app name
                const Text(
                  "M I N I M A L",
                  style: TextStyle(fontSize: 20),
                ),
            
                const SizedBox(
                  height: 50,
                ),
            
                //   emailtextfield
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController,
                ),
            
                const SizedBox(
                  height: 10,
                ),
            
                //   new password textfield
                MyTextField(
                  hintText: " New Password",
                  obscureText: true,
                  controller: passwordController,
                ),
            
                const SizedBox(
                  height: 10,
                ),
            
                MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: passwordController,
                ),
            
                const SizedBox(
                  height: 10,
                ),
            
                const SizedBox(
                  height: 25,
                ),
            
                //   update password button
                MyButton(
                  text: "Update",
                  onTap: () => Navigator.pushNamed(context, '/login_page'),
                  child: Text(""),
                ),
            
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
