import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screens/auth/change_password_screen.dart';
import 'package:task_manager/ui/screens/auth/sign_in_screen.dart';
import 'package:task_manager/ui/utility/assets_path.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';
import 'package:task_manager/ui/widgets/custom_elevated_button.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
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
                  Text('Pin Verification',
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                      'A six digit verification pin will send to your email address',
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 15),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    enableActiveFill: true,
                    backgroundColor: Colors.transparent,
                    // onChanged: (value) {
                    //   setState(() {
                    //     otpCode = value;
                    //   });
                    // },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 50,
                      fieldWidth: 45,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      activeColor: Colors.green,
                      selectedColor: Colors.red,
                      inactiveColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 50,
                    width: double.maxFinite,
                    child: CustomElevatedButton(
                        onPressed: () {
                          _onTapMoveToChangePasswordScreen(context);
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: size.height * 0.065,
                  ),
                  Center(
                    child: _backToSignInScreen(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapMoveToChangePasswordScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangePasswordScreen(),
      ),
    );
  }
}

class _backToSignInScreen extends StatelessWidget {
  const _backToSignInScreen({
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
