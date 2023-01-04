import 'dart:io';
import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:wqfni_v9/ReservationPage1.dart';
import 'package:wqfni_v9/profile.dart';
import 'package:wqfni_v9/signUp.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}
//sadfshr
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(155, 98, 253, 1),
        body: SizedBox(
          width: size.width,
          height: size.height,
          //child: ,
        ),
      ),
    );
  }
}