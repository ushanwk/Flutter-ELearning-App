import 'package:e_learning_app/constants.dart';
import 'package:e_learning_app/screens/home_screen.dart';
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
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Spacer(),
                        const Text(
                            'Learning Everything',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        const Text(
                            'Learn with pleasure with\nus,where you are!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            wordSpacing: 2.5,
                            color: Colors.black54,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              height: 60,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              color: kpink,
                              child: const Text(
                                  'Get Start',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                                ),
                              ),
                                onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                                }
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
