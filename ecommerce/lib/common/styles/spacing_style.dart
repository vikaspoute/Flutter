import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}
