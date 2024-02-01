import 'package:flutter/material.dart';
import 'package:ratchanon_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Vansbuttonno1sectionItemWidget extends StatelessWidget {
  const Vansbuttonno1sectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 123.v,
      width: 399.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 13.v),
              padding: EdgeInsets.symmetric(
                horizontal: 44.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.fillCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 62.v,
                    width: 76.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 62.v,
                            width: 76.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                38.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "No.1",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 51.h,
                      top: 4.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "ว่าง",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 123.adaptSize,
            width: 123.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 13.h),
          ),
        ],
      ),
    );
  }
}
