import 'package:flutter/material.dart';

import 'package:tumregistercar/widgets/show_text.dart';

class ShowForm extends StatelessWidget {
  final String label;
  final String hint;
  final Function(String) changeFunc;
  const ShowForm({
    Key? key,
    required this.label,
    required this.hint,
    required this.changeFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        child: TextFormField(onChanged:changeFunc ,
          decoration: InputDecoration(hintText: hint,
            label: ShowText(label: label),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
