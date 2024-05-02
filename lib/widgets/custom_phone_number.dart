import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import '../utils/app_export.dart';

class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {Key? key,
      required this.country,
      required this.onTap,
      required this.controller})
      : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5,
            bottom: 6,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 25,
                width: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 59,
                  top: 1,
                  bottom: 1,
                ),
                child: Text(
                  "+${country.phoneCode}",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9,
                  top: 8,
                  bottom: 9,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 36,
          width: 1,
          margin: EdgeInsets.only(left: 9),
          decoration: BoxDecoration(
            color: colors.gray600,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 12,
              top: 7,
              bottom: 9,
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Mobile Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
