import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:flutter_gpotter/main.dart';

class BottonPotter extends StatelessWidget {
  const BottonPotter({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
          DataFromScreenSize.cardPadding[getScreenSize(context).index]),
      child: AspectRatio(
        aspectRatio: 12 / 1,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).focusColor,
            borderRadius: BorderRadius.circular(
                DataFromScreenSize.borderRarius[getScreenSize(context).index] *
                    2),
          ),
          alignment: Alignment.center,
          child: Text(
            value,
            style: Theme.of(context).textTheme.button!.copyWith(
                color: Theme.of(context).inputDecorationTheme.fillColor),
          ),
        ),
      ),
    );
  }
}
