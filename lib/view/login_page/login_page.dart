import 'package:block_samble/view/navigationbar/navigationbar.dart';
import 'package:block_samble/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNamecontroller = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                const Text(
                  'Let\'s Sign You In ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Welcome back, you\'ve been missed!',
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                ),
                const SizedBox(height: 70),
                const Text(
                  'Username',
                  style: TextStyle(color: Colors.black38),
                ),
                MyTextFormField(
                  controllers: userNamecontroller,
                  hintText: 'Username',
                  prefixIconData: Icons.person_2_outlined,
                ),
                const SizedBox(height: 60),
                const Text(
                  'Password',
                  style: TextStyle(color: Colors.black38),
                ),
                MyTextFormField(
                  controllers: passwordController,
                  hintText: 'Password',
                  prefixIconData: Icons.lock_outlined,
                ),
                const SizedBox(height: 100),
                SizedBox(
                  height: 50,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade600,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyNavigationbar(),
                          ),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
