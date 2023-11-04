import 'package:flutter/material.dart';
import 'package:internship_project/src/module/checkout/local_widget/confi_background.dart';
import 'package:internship_project/src/module/checkout/local_widget/confirm_message.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConfiBackground(),
            ],
          ),
          ConfirmMessage()
        ],
      ),
    );
  }
}
