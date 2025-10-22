import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/auth/sign_in_screen.dart';
import 'package:task_manager/ui/utility/assets_path.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';
import 'package:task_manager/ui/widgets/custom_elevated_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _passwordTEController.dispose();
    _confirmPasswordTEController.dispose();
  }

  String? validate(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return 'Enter a valid value';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.2),
                  Text('Set Password',
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                      'Minimum length password 8 character with latter and number combination',
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _passwordTEController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(hintText: 'Password'),
                    validator: validate,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _confirmPasswordTEController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(hintText: 'Confirm Password'),
                    validator: validate,
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 50,
                    width: double.maxFinite,
                    child: CustomElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Confirm',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),),
                  ),
                  SizedBox(
                    height: size.height * 0.065,
                  ),
                  Center(
                    child: _backToSignInScreenSection(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _backToSignInScreenSection extends StatelessWidget {
  const _backToSignInScreenSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Have account? ',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: 'Sign in',
            style: TextStyle(color: AssetsPath.themeColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
          )
        ],
      ),
    );
  }
}
