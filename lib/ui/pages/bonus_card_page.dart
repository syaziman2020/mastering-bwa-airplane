import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 311,
        height: 211,
        padding: EdgeInsets.all(marginDefault),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              offset: Offset(0, 10),
              blurRadius: 50,
            ),
          ],
          image: DecorationImage(
            image: AssetImage("assets/img_card.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        "Uray Syaziman",
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 6),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_plane.png",
                      ),
                    ),
                  ),
                ),
                Text(
                  "Pay",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(fontWeight: light),
            ),
            Text(
              "IDR 280.000.000",
              style: whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonStarted() {
      return Button(
        title: "Start Fly Now",
        margin: EdgeInsets.only(top: 50),
        onPressed: () {
          Navigator.pushNamed(context, "/main");
        },
        width: 220,
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            buttonStarted(),
          ],
        ),
      ),
    );
  }
}
