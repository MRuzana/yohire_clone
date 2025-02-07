import 'package:flutter/material.dart';
import 'package:yohire/utils/constants/colors.dart';
import 'package:yohire/utils/constants/width_height.dart';
import 'package:yohire/views/screens/home/home_screen_content.dart';
import 'package:yohire/views/styles/button_style.dart';
import 'package:yohire/views/styles/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/yohire_logo.png',
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: padding20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                  HomeScreenContent(), 
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(1.0, 0.0); // Slide from right
                                const end = Offset.zero;
                                const curve =
                                    Curves.easeInOut; // Smooth animation

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));

                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: elevatedButtonStyle1,
                        child: Text(
                          'Continue as Guest',
                          style: customTextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('or \n Sign in with ',
                          textAlign: TextAlign.center),
                      kHeight10,
                      Padding(
                        // Social login buttons row
                        padding: padding20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(thickness: 1, endIndent: 20),
                            ),
                            // Google Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(), // Make it circular
                                padding: padding8,
                              ),
                              child: Image.asset('assets/images/google.png',
                                  width: 20, height: 20),
                            ),
                            kWidth20,
                            // Apple Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(), // Make it circular
                                padding: padding8,
                              ),
                              child: Image.asset('assets/images/apple.png',
                                  width: 20, height: 20),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                indent: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      kHeight20,
                      Padding(
                        padding: paddingLR50,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                  text: 'By signing in you accept our '),
                              TextSpan(
                                text: 'terms & conditions',
                                style: const TextStyle(
                                  color: kDarkBlue,
                                ),
                              ),
                              const TextSpan(text: ' and '),
                              TextSpan(
                                text: 'privacy policy',
                                style: const TextStyle(
                                  color: kDarkBlue,
                                ),
                              ),
                              const TextSpan(text: '.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
