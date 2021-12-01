import 'package:flutter/material.dart';
import 'package:messenger_app_flutter/component/logIn_Component.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email',
                    type: TextInputType.emailAddress,
                    prefix: Icons.email,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    label: 'Password',
                    type: TextInputType.visiblePassword,
                    prefix: Icons.lock,
                    suffix:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    isPassword: isPassword,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    width: double.infinity,
                    borderRadius: 7.0,
                    text: 'logIn',
                    function: () {
                      if (formKey.currentState.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    width: double.infinity,
                    isUpperCase: false,
                    borderRadius: 7.0,
                    text: 'ReGIstER',
                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
