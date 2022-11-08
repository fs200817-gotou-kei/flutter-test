import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:validate_app/estimate_result.dart';

class TextFieldValidate extends StatefulWidget {
  const TextFieldValidate({super.key});

  @override
  State<TextFieldValidate> createState() => _TextFieldValidateState();
}

class _TextFieldValidateState extends State<TextFieldValidate> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '入力してください';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                child: Row(
                  children: [
                    Text('オーディオ'),
                    Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
                  ],
                ),
              ),
            ),
            Container(
              child: EstimateResult(),
            )
          ],
        ));
  }
}
