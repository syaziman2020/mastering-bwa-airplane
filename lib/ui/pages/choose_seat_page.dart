import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mastering_airplane_bwa/cubit/seat_cubit.dart';
import 'package:mastering_airplane_bwa/models/destination_model.dart';
import 'package:mastering_airplane_bwa/models/transaction_model.dart';
import 'package:mastering_airplane_bwa/ui/pages/checkout_page.dart';
import 'package:mastering_airplane_bwa/ui/widgets/custom_button.dart';
import 'package:mastering_airplane_bwa/ui/widgets/item_seat.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Text(
          "Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            // * AVAILABLE
            Container(
              margin: EdgeInsets.only(
                right: 6,
              ),
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/available.png',
                  ),
                ),
              ),
            ),
            Text(
              "Available",
              style: blackTextStyle,
            ),

            // * SELECTED
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/selected.png',
                  ),
                ),
              ),
            ),
            Text(
              "Selected",
              style: blackTextStyle,
            ),

            // * UNAVAILABLE
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              "Unavailable",
              style: blackTextStyle,
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 22,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhitecolor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 48,
                      child: Center(
                        child: Text(
                          "A",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      child: Center(
                        child: Text(
                          "B",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      child: Center(
                        child: Text(
                          "",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      child: Center(
                        child: Text(
                          "C",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      child: Center(
                        child: Text(
                          "D",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),

                // * SEAT 1
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemSeat(
                        isAvailable: false,
                        id: 'A1',
                      ),
                      ItemSeat(
                        isAvailable: false,
                        id: 'B1',
                      ),
                      Container(
                        width: 48,
                        child: Center(
                          child: Text(
                            "1",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      ItemSeat(
                        id: 'C1',
                      ),
                      ItemSeat(
                        isAvailable: false,
                        id: 'D1',
                      ),
                    ],
                  ),
                ),

                // * SEAT 2
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemSeat(
                        id: 'A2',
                      ),
                      ItemSeat(
                        id: 'B2',
                      ),
                      Container(
                        width: 48,
                        child: Center(
                          child: Text(
                            "2",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      ItemSeat(
                        id: 'C2',
                      ),
                      ItemSeat(
                        isAvailable: false,
                        id: 'D2',
                      ),
                    ],
                  ),
                ),

                // * SEAT 3
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemSeat(
                        id: 'A3',
                      ),
                      ItemSeat(
                        id: 'B3',
                      ),
                      Container(
                        width: 48,
                        child: Center(
                          child: Text(
                            "3",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      ItemSeat(
                        id: 'C3',
                      ),
                      ItemSeat(
                        id: 'D3',
                      ),
                    ],
                  ),
                ),

                // * SEAT 4
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemSeat(
                        id: 'A4',
                      ),
                      ItemSeat(
                        isAvailable: false,
                        id: 'B4',
                      ),
                      Container(
                        width: 48,
                        child: Center(
                          child: Text(
                            "4",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      ItemSeat(
                        id: 'C4',
                      ),
                      ItemSeat(
                        id: 'D4',
                      ),
                    ],
                  ),
                ),

                // * SEAT 5
                Container(
                  margin: EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemSeat(
                        id: 'A5',
                      ),
                      ItemSeat(
                        id: 'B5',
                      ),
                      Container(
                        width: 48,
                        child: Center(
                          child: Text(
                            "5",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      ItemSeat(
                        isAvailable: false,
                        id: 'C5',
                      ),
                      ItemSeat(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),

                // * YOUR SEAT
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your seat",
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          state.join(', '),
                          style: blackTextStyle.copyWith(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // * TOTAL
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(state.length * destination.price),
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          int price = destination.price * state.length;
          return Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(
                    TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeat: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
            title: "Continue to Checkout",
            margin: EdgeInsets.only(
              top: 30,
              bottom: 46,
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: marginDefault,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
