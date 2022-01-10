import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/cubit/seat_cubit.dart';
import 'package:mastering_airplane_bwa/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemSeat extends StatelessWidget {
  final String id;
  final bool isAvailable;
  const ItemSeat({
    Key? key,
    this.isAvailable = true,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    // * 0. Unavailable 1. Available 2. Selected
    backgroundColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    childText() {
      if (isSelected) {
        return Center(
          child: Text(
            "YOU",
            style: whiteTextStyle.copyWith(fontWeight: semiBold),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: borderColor(),
          ),
        ),
        child: childText(),
      ),
    );
  }
}
