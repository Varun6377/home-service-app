import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../utils/app_export.dart';
import '../theme/custom_button_style.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_phone_number.dart';

class LoginOldUsersScreen extends StatelessWidget {
  LoginOldUsersScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 51,
              ),
              child: Column(
                children: [
                  Text(
                    "Welcome Back!",
                    style: CustomTextStyles.titleLargeBlack90001,
                  ),
                  SizedBox(height: 63),
                  _buildContinueColumn(context),
                  SizedBox(height: 61),
                  Text(
                    "OR CONTINUE WITH PHONE NUMBER",
                    style: CustomTextStyles.titleSmallErrorContainer,
                  ),
                  SizedBox(height: 22),
                  _buildStackTelevision(context),
                  SizedBox(height: 24),
                  CustomElevatedButton(
                    text: "LOG IN",
                    onPressed: () {
                      onTapLogin(context);
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Forgot Password?",
                    style: CustomTextStyles.titleSmallBlack90001,
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      onTapNav(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "DON’T HAVE AN ACCOUNT?",
                            style: CustomTextStyles.titleSmallHelveticaNeueGray,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "SIGN UP",
                            style:
                                CustomTextStyles.titleSmallHelveticaNeueBlue500,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 5)
                ],
              ),
            ),
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

  Widget _buildContinueColumn(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          text: "CONTINUE WITH FACEBOOK",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 26),
            child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 24,
              width: 12,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillIndigo,
          buttonTextStyle: CustomTextStyles.titleSmallGray100,
        ),
        SizedBox(height: 20),
        CustomOutlinedButton(
          text: "CONTINUE WITH GOOGLE",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 21),
            child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 24,
              width: 23,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStackTelevision(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: colors.gray10003,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 63,
        width: 322,
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: colors.gray10003,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomPhoneNumber(
              country: selectedCountry,
              controller: phoneNumberController,
              onTap: (Country value) {
                selectedCountry = value;
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36,
                  bottom: 8,
                ),
                child: Text(
                  "(USA)",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
  }

  onTapNav(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
