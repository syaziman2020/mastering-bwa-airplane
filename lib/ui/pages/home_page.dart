import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/shared/theme.dart';
import 'package:mastering_airplane_bwa/ui/widgets/destination_card.dart';
import 'package:mastering_airplane_bwa/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: marginDefault,
          right: marginDefault,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nUray Syaziman",
                    style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/img_profile.png"),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DestinationCard(
              imageUrl: "assets/img_destination1.png",
              name: "Lake Ciliwung",
              city: "Tangerang",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/img_destination2.png",
              name: "White Houses",
              city: "Spain",
              rating: 4.7,
            ),
            DestinationCard(
              imageUrl: "assets/img_destination3.png",
              name: "Hill Heyo",
              city: "Monaco",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/img_destination4.png",
              name: "Menarra",
              city: "Japan",
              rating: 5.0,
            ),
            DestinationCard(
              imageUrl: "assets/img_destination5.png",
              name: "Payung Teduh",
              city: "Singapore",
              rating: 4.8,
            ),
            SizedBox(
              width: 24,
            )
          ],
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 110,
          top: 30,
          left: marginDefault,
          right: marginDefault,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              imageUrl: "assets/img_destination7.png",
              name: "Danau Beratan",
              city: "Singaraja",
              rating: 4.5,
            ),
            DestinationTile(
              imageUrl: "assets/img_destination6.png",
              name: "Sydney Opera",
              city: "Australia",
              rating: 4.7,
            ),
            DestinationTile(
              imageUrl: "assets/img_destination8.png",
              name: "Roma",
              city: "Italy",
              rating: 4.8,
            ),
            DestinationTile(
              imageUrl: "assets/img_destination5.png",
              name: "Payung Teduh",
              city: "Singapura",
              rating: 4.5,
            ),
            DestinationTile(
              imageUrl: "assets/img_destination3.png",
              name: "Hill Hey",
              city: "Monaco",
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
