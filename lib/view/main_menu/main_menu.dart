import 'package:flutter/material.dart';
import 'package:quiz_game/App_Constant/app_constant.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Quiz Game",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Quiz Highest Score",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            const Text("Md Nayeem 600"),
            SizedBox(
              height: AppSize.height80(context),
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF1C2341),
                hintText: "Full Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.height40(context),
            ),
            InkWell(
              onTap: () {
                print("Clicked");
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(AppSize.width40(context)), // 15
                decoration: const BoxDecoration(
                  gradient: buttonColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const Text(
                  "Start New Game",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
