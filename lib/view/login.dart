import 'package:aula2b/components/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back_ios_new),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          fundoGradiente(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/logoTinder.png'),
                  const SizedBox(
                    height: 25,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text:
                                'By tapping Create Account or Sign In,you agree to our ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(
                            text: '. Learn how we process your data in our',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Privacy Policy',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(
                            text: ' and',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Cookies Policy',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  //const SizedBox(height: 25),
                  const Botao(
                      texto: 'APPLE', iconeCaminho: 'assets/icon-apple.png'),
                  const SizedBox(height: 10),
                  const Botao(
                    texto: 'FACEBOOK',
                    iconeCaminho: 'assets/icon-facebook.png',
                  ),
                  const SizedBox(height: 10),
                  const Botao(
                    texto: 'PHONE NUMBER',
                    iconeCaminho: 'assets/icon-conversation-balloon.png',
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Trouble Signing In?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container fundoGradiente() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFFe725b), Color(0xFFfd0985)],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            stops: [0.2, 0.8],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
