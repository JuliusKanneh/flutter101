import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  String _selectedGender = "male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const Text('Select Gender:'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio<String>(
                value: "male",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              ),
              Text('Male'),
              SizedBox(width: 20),
              Radio<String>(
                value: "female",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              ),
              Text('Female'),
            ],
          ),
          // You can add a Text widget here to display the selected gender
          Text('Selected Gender: $_selectedGender'),
        ],
      ),
    );
  }
}
