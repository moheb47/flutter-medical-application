import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctorlist/screens/doctor_list.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorList(),
      theme: ThemeData(
        dividerColor: Colors.black,
        colorSchemeSeed: Color(0xff07da5f),
      ),
    ),
  );
}
