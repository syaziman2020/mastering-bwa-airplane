import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mastering_airplane_bwa/models/transaction_model.dart';
import 'package:mastering_airplane_bwa/shared/theme.dart';
import 'package:mastering_airplane_bwa/ui/widgets/booking_details_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: kWhitecolor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: NetworkImage(
                        transaction.destination.imageUrl,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icon_star.png"),
                      ),
                    ),
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Booking Details",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),

          // * Details booking item
          BookingDetailsItem(
            title: "Traveler",
            text: transaction.amountOfTraveler.toString(),
            colorText: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Seat",
            text: transaction.selectedSeat,
            colorText: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Insurance",
            text: (transaction.insurance) ? "YES" : "NO",
            colorText: (transaction.insurance) ? kGreenColor : kRedColor,
          ),
          BookingDetailsItem(
            title: "Refundable",
            text: (transaction.refundable) ? "YES" : "NO",
            colorText: (transaction.refundable) ? kGreenColor : kRedColor,
          ),
          BookingDetailsItem(
            title: "VAT",
            text: "${(transaction.vat * 100).toStringAsFixed(0)}%",
            colorText: kBlackColor,
          ),
          BookingDetailsItem(
            title: "PRICE",
            text: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.price),
            colorText: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Grand Total",
            text: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.grandTotal),
            colorText: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
