import 'package:flutter/material.dart';

class Stylings {
  static Widget regularSpacing = const SizedBox(
    height: 20,
  );

  static var inputDecoration = InputDecoration(
    label: const Text("Enter Name"),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
