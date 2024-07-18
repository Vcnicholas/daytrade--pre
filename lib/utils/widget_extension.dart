import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const ext = 0;

extension WidgetExtensions on double {
  Widget get sbH => SizedBox(height: this.h);
  Widget get sbW => SizedBox(width: this.w);
  EdgeInsetsGeometry get padA => EdgeInsets.all(this);
  EdgeInsetsGeometry get padV => EdgeInsets.symmetric(vertical: h);
  EdgeInsetsGeometry get padH => EdgeInsets.symmetric(horizontal: w);
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
