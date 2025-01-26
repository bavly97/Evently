import 'package:evently/widgets/custom_elevated_button.dart';
import 'package:evently/widgets/custom_text_button.dart';
import 'package:evently/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register';
  TextEditingController? nameController = TextEditingController();
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
                    hintText: 'Name',
                    iconName: 'name',
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.length < 5) {
                        return 'Invalid name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
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
                  CustomElevatedButton(
                    text: 'Create Account',
                    onpressed: createAccountPressed,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have Account ?',
                        style: textTheme.bodyMedium,
                      ),
                      CustomTextButton(
                        text: 'Login',
                        onpressed: () {
                          Navigator.pop(context);
                        },
                      )
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

  void createAccountPressed() {
    if (formKey.currentState!.validate()) {}
  }
}
