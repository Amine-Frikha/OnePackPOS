import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onepack/global/constants.dart';

class CustomWidgets {
  static Widget noteField() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              child: Container(
                color: secondaryColor,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Rédiger Une Note',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget funcButtons({
    required String title,
    required String iconPath,
  }) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  iconPath,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          Flexible(
            child: Text(
              title,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
