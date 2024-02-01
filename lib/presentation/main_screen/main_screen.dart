import '../main_screen/widgets/vansbuttonno1section_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ratchanon_s_application3/core/app_export.dart';
import 'package:ratchanon_s_application3/widgets/custom_elevated_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHeadSection(context),
                  Spacer(flex: 55),
                  _buildVansButtonNo1Section(context),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      width: 294.h,
                      text: "จองรถ".toUpperCase(),
                      onPressed: () {
                        onTaptf(context);
                      }),
                  Spacer(flex: 44)
                ]))));
  }

  /// Section Widget
  Widget _buildHeadSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder46),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 55.adaptSize,
              width: 55.adaptSize,
              margin: EdgeInsets.only(bottom: 8.v)),
          Padding(
              padding: EdgeInsets.only(left: 81.h, top: 18.v, bottom: 26.v),
              child: Text("asdwadawdawda".toUpperCase(),
                  style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildVansButtonNo1Section(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 29.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Vansbuttonno1sectionItemWidget();
            }));
  }

  /// Navigates to the addQueueScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addQueueScreen);
  }
}
