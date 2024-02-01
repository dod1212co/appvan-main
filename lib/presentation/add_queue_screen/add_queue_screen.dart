import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:ratchanon_s_application3/core/app_export.dart';
import 'package:ratchanon_s_application3/widgets/custom_icon_button.dart';
import 'package:ratchanon_s_application3/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AddQueueScreen extends StatelessWidget {
  AddQueueScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 1.h, top: 65.v, right: 1.h),
                child: Column(children: [
                  _buildPickDate(context),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 156.v,
                          width: 298.h,
                          margin: EdgeInsets.only(left: 30.h),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 113.v,
                                    width: 230.h,
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius:
                                            BorderRadius.circular(12.h),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.gray4003f,
                                              spreadRadius: 2.h,
                                              blurRadius: 2.h,
                                              offset: Offset(0, 0))
                                        ]))),
                            _buildTwelve(context)
                          ]))),
                  SizedBox(height: 67.v),
                  _buildEleven(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildPickDate(BuildContext context) {
    return SizedBox(
        height: 401.v,
        width: 331.h,
        child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.multi,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                selectedDayHighlightColor: Color(0XFFFFFFFF),
                firstDayOfWeek: 0,
                weekdayLabelTextStyle: TextStyle(
                    color: appTheme.gray60001,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500),
                selectedDayTextStyle: TextStyle(
                    color: Color(0XFFC5C5C5),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400),
                disabledDayTextStyle: TextStyle(
                    color: appTheme.gray400,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400),
                weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"],
                dayBorderRadius: BorderRadius.circular(18.h)),
            value: selectedDatesFromCalendar1,
            onValueChanged: (dates) {}));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 52.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select time".toUpperCase(),
                      style: theme.textTheme.labelLarge),
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _buildMinuteDesktop(context, zero: "12"),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 48.v, bottom: 43.v),
                                child: Text(":",
                                    style: theme.textTheme.bodyLarge)),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: _buildMinuteDesktop(context, zero: "00"))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomOutlinedButton(
                  text: "OK".toUpperCase(),
                  margin: EdgeInsets.only(right: 23.h),
                  buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
                  onPressed: () {
                    onTapOK(context);
                  })),
          Expanded(
              child: CustomOutlinedButton(
                  text: "CANCEL".toUpperCase(),
                  margin: EdgeInsets.only(left: 23.h),
                  buttonStyle: CustomButtonStyles.outlineBlueA,
                  onPressed: () {
                    onTapCANCEL(context);
                  }))
        ]));
  }

  /// Common widget
  Widget _buildMinuteDesktop(
    BuildContext context, {
    required String zero,
  }) {
    return Column(children: [
      CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(6.h),
          child: CustomImageView(imagePath: ImageConstant.imgArrowUp)),
      SizedBox(height: 10.v),
      Text(zero,
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.primaryContainer)),
      SizedBox(height: 9.v),
      CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          padding: EdgeInsets.all(6.h),
          child: CustomImageView(imagePath: ImageConstant.imgCheckmark))
    ]);
  }

  /// Navigates to the selectVansScreen when the action is triggered.
  onTapOK(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectVansScreen);
  }

  /// Navigates to the mainScreen when the action is triggered.
  onTapCANCEL(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
