import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        '',
        style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
