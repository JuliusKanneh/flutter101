import 'package:flutter/material.dart';
import 'package:flutter_101/stylings.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InputDecoration style({required String label, IconButton? suffixIcon}) =>
        InputDecoration(
          prefixIcon: const Icon(Icons.person),
          suffixIcon: suffixIcon,
          // label: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Icon(Icons.person),
          //     Text(
          //       "Enter User Name",
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.clear),
          //     )
          //   ],
          // ),

          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        // margin: EdgeInsets.fromLTRB(20, 50, 30, 35),
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            const Text("Form"),
            Stylings.regularSpacing,
            TextFormField(
              decoration: style(label: "Enter User Name"),
            ),
            Stylings.regularSpacing,
            TextFormField(
              decoration: style(label: "Contact"),
            ),
            Stylings.regularSpacing,
            TextFormField(
              decoration: style(
                label: "Address",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            Stylings.regularSpacing,
            DropdownButtonFormField<String>(
              value: "liberia", //default value
              decoration: style(label: "Country"),
              items: const [
                DropdownMenuItem(
                  value: "liberia",
                  child: Text("Liberia"),
                ),
                DropdownMenuItem(
                  value: "burundi",
                  child: Text("Burundi"),
                ),
                DropdownMenuItem(
                  value: "rwanda",
                  child: Text("Rwanda"),
                ),
                DropdownMenuItem(
                  value: "kenya",
                  child: Text("Kenya"),
                ),
              ],
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
