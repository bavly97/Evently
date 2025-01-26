import 'package:evently/screens/register_screen.dart';
import 'package:evently/widgets/custom_elevated_button.dart';
import 'package:evently/widgets/custom_text_button.dart';
import 'package:evently/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScree extends StatelessWidget {
  static const String routeName = '/login';
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: screenSize.height * 0.2,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 24),
                  CustomTextFormField(
                    hintText: 'Email',
                    iconName: 'email',
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.length < 5) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: 'Password',
                    iconName: 'password',
                    controller: passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return 'Password can not be less than 8 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      text: "Forget Password?",
                      onpressed: () {},
                    ),
                  ),
                  SizedBox(height: 24),
                  CustomElevatedButton(
                    text: 'Login',
                    onpressed: loginPressed,
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t Have Account ?',
                        style: textTheme.bodyMedium,
                      ),
                      CustomTextButton(
                        text: 'Create Account',
                        onpressed: () {
                          Navigator.of(context)
                              .pushNamed(RegisterScreen.routeName);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void loginPressed() {
    if (formKey.currentState!.validate()) {}
  }
}
