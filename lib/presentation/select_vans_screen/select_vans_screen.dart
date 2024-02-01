import '../select_vans_screen/widgets/vansbuttonno1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ratchanon_s_application3/core/app_export.dart';

class SelectVansScreen extends StatelessWidget {
  const SelectVansScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeadSection(context),
              Spacer(
                flex: 37,
              ),
              _buildVansButtonNo1(context),
              Spacer(
                flex: 63,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 55.adaptSize,
            width: 55.adaptSize,
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 81.h,
              top: 21.v,
              bottom: 18.v,
            ),
            child: Text(
              "asdwadawdawda".toUpperCase(),
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVansButtonNo1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 29.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Vansbuttonno1ItemWidget();
        },
      ),
    );
  }
}
