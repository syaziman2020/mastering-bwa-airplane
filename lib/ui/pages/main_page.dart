import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_airplane_bwa/cubit/page_cubit.dart';
import 'package:mastering_airplane_bwa/ui/pages/home_page.dart';
import 'package:mastering_airplane_bwa/ui/pages/my_wallet.dart';
import 'package:mastering_airplane_bwa/ui/pages/settings.dart';
import 'package:mastering_airplane_bwa/ui/pages/transaction.dart';
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
                index: 0,
                imageUrl: "assets/icon_home.png",
              ),
              CustomBottomNavbar(
                index: 1,
                imageUrl: "assets/icon_book.png",
              ),
              CustomBottomNavbar(
                index: 2,
                imageUrl: "assets/icon_creditcard.png",
              ),
              CustomBottomNavbar(
                index: 3,
                imageUrl: "assets/icon_settings.png",
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return Transaction();
        case 2:
          return MyWallet();
        case 3:
          return Settings();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) => Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            buildContent(currentIndex),
            customBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
