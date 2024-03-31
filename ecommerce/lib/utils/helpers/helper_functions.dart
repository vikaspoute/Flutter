import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunctions {
  static Color? getColor(String color) {
    switch (color) {
      case "Red":
        return Colors.red;
      case "Green":
        return Colors.green;
      case "Blue":
        return Colors.blue;
      case "Pink":
        return Colors.pink;
      case "Grey":
        return Colors.grey;
      case "Yellow":
        return Colors.yellow;
      case "Purple":
        return Colors.purple;
      case "Orange":
        return Colors.orange;
      case "White":
        return Colors.white;
      default:
        return Colors.black;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showAlert({required String title, required String message}) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => screen,
      ),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return "${text.substring(0, maxLength)}...";
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static String getFormattedDate(DateTime date,
      {String format = "dd MMM yyyy"}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    List<Widget> rows = [];
    for (int i = 0; i < widgets.length; i += rowSize) {
      rows.add(Row(
        children: widgets.sublist(i, min(i + rowSize, widgets.length)),
      ));
    }
    return rows;
  }
}
