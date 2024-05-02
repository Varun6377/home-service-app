import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../utils/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_phone_number.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    height: 449,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame,
                          height: 445,
                          width: 375,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Your Home services Expert",
                            style: CustomTextStyles.titleLargeBlack90001,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Continue with Phone Number",
                    style: CustomTextStyles.titleSmallGray500,
                  ),
                  SizedBox(height: 27),
                  _buildTelevisionStack(context),
                  SizedBox(height: 20),
                  CustomElevatedButton(
                    text: "SIGN UP",
                    margin: EdgeInsets.only(
                      left: 26,
                      right: 27,
                    ),
                  ),
                  SizedBox(height: 11),
                  Text(
                    "VIEW OTHER OPTION",
                    style: CustomTextStyles.titleSmallHelveticaNeueBlue500,
                  ),
                  SizedBox(height: 27),
                  GestureDetector(
                    onTap: () {
                      onTapTxtAlreadyhavean(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "ALREADY HAVE AN ACCOUNT?",
                            style: CustomTextStyles.titleSmallHelveticaNeueGray,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "LOG IN",
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

  Widget _buildTelevisionStack(BuildContext context) {
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
                  left: 37,
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

  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOldUsersScreen);
  }
}
