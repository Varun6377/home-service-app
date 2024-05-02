import 'package:flutter/material.dart';
import '../utils/app_export.dart';
import '../theme/custom_button_style.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_pin_code_text_field.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 22,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPasswordCodeV,
                height: 187,
                width: 166,
              ),
              SizedBox(height: 68),
              Text(
                "OTP Verification",
                style: CustomTextStyles.titleLargeBlack90001,
              ),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the OTP sent to ",
                      style: CustomTextStyles.bodyMediumInterBlack90001,
                    ),
                    TextSpan(
                      text: "+1 9879878975",
                      style: CustomTextStyles.titleSmallBlack90001SemiBold,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 65),
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 25,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(height: 26),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "OTP not recived?",
                      style: CustomTextStyles.bodyMediumInterGray60001,
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 8),
                    ),
                    TextSpan(
                      text: "RESEND OTP",
                      style: CustomTextStyles.titleSmallHelveticaNeueBlue500,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30),
              CustomElevatedButton(
                text: "VERIFY & PROCEED",
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.titleMediumInterPrimary,
                onPressed: () {
                  onTapVerifyproceed(context);
                },
              ),
              SizedBox(height: 5)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 32,
        width: 32,
        margin: EdgeInsets.fromLTRB(25, 12, 318, 12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgLayer2,
                height: 20,
                width: 26,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2, 6, 3, 6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapVerifyproceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addNewAddressScreen);
  }
}
