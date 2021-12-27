import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/shared/theme.dart';
import 'package:mastering_airplane_bwa/ui/widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img_started.png"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  "Fly Like a Bird",
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Explore new world with us and let\nyourself get an amazing experiences",
                style: whiteTextStyle.copyWith(
                    fontSize: 16, fontWeight: light, height: 2),
                textAlign: TextAlign.center,
              ),
              Button(
                onPressed: () {
                  Navigator.pushNamed(context, "/sign-up");
                },
                title: "Get Started",
                width: 220,
                margin: EdgeInsets.only(top: 50, bottom: 80),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
