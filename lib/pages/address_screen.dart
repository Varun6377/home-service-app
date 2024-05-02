import 'package:flutter/material.dart';
import '../utils/app_export.dart';
import '../theme/custom_button_style.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_outlined_button.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 16,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                ),
              ),
              Spacer(
                flex: 36,
              ),
              Text(
                "Hey, nice to meet you!",
                style: CustomTextStyles.titleMediumBluegray40001,
              ),
              SizedBox(height: 12),
              Text(
                "See services around",
                style: CustomTextStyles.titleLargeBlack90001,
              ),
              SizedBox(height: 49),
              CustomImageView(
                imagePath: ImageConstant.imgUndrawBestPlaceR685,
                height: 141,
                width: 310,
              ),
              SizedBox(height: 64),
              CustomElevatedButton(
                height: 53,
                text: "Your current location",
                margin: EdgeInsets.only(
                  left: 22,
                  right: 31,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 11),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGps1,
                    height: 19,
                    width: 19,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlackTL26,
                buttonTextStyle: CustomTextStyles.titleMediumInterPrimary,
              ),
              SizedBox(height: 16),
              CustomOutlinedButton(
                height: 53,
                text: "Some other location",
                margin: EdgeInsets.only(
                  left: 22,
                  right: 31,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 11),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRewind,
                    height: 17,
                    width: 17,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineErrorContainer,
                buttonTextStyle:
                    CustomTextStyles.titleMediumInterErrorContainer,
              ),
              Spacer(
                flex: 63,
              )
            ],
          ),
        ),
      ),
    );
  }
}
