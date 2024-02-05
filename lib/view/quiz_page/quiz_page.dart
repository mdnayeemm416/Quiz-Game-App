import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_game/App_Constant/app_constant.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 5,
      ),
      body: Container(
        padding: EdgeInsets.all(AppSize.height20(context)),
        height: AppSize.height(context),
        width: AppSize.width(context),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Background_img.jpg"),
                fit: BoxFit.cover)),
        child: Column(children: [
          SafeArea(
            child: LinearPercentIndicator(
              animation: true,
              animationDuration: 10000,
              lineHeight: 30,
              barRadius: const Radius.circular(20),
              percent: 1,
              center: const Text(
                "1",
                style: TextStyle(color: Colors.black),
              ),
              linearGradient: const LinearGradient(
                  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)]),
            ),
          )
        ]),
      ),
    );
  }
}
