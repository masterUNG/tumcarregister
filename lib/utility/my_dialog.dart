import 'package:flutter/material.dart';
import 'package:tumregistercar/utility/my_constant.dart';
import 'package:tumregistercar/widgets/show_button.dart';
import 'package:tumregistercar/widgets/show_text.dart';

class MyDialog {
  final BuildContext context;
  MyDialog({
    required this.context,
  });

  Future<void> normalDailog(String title, String message) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ShowText(
          label: title,
          textStyle: MyConstant().h2Style(),
        ),
        content: ShowText(label: message),
        actions: [ShowButton(label: 'OK', pressFunc: ()=> Navigator.pop(context))],
      ),
    );
  }
}
