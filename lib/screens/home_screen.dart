import 'package:e_learning_app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: (){},
                    icon: const Icon(
                        Icons.dashboard_customize_rounded,
                      color: kblue,
                    ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.search_rounded,
                  ),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
