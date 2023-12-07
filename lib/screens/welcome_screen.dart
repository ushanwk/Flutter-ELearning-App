import 'package:e_learning_app/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblue,
        toolbarHeight: 5,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kblue,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Image.asset(
                        'assest/image/welcome.png',
                        width: 400,
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                color: kblue,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
