import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/ui/pages/home_page.dart';
import 'package:mastering_airplane_bwa/ui/widgets/custom_navigation_bar.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: marginDefault,
            right: marginDefault,
          ),
          decoration: BoxDecoration(
            color: kWhitecolor,
            borderRadius: BorderRadius.circular(18),
          ),
          width: double.infinity,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavbar(
                imageUrl: "assets/icon_home.png",
                isSelected: true,
              ),
              CustomBottomNavbar(
                imageUrl: "assets/icon_book.png",
              ),
              CustomBottomNavbar(
                imageUrl: "assets/icon_creditcard.png",
              ),
              CustomBottomNavbar(
                imageUrl: "assets/icon_settings.png",
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent() {
      return HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
