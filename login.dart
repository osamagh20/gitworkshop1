import 'dart:io';
import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:wqfni_v9/ReservationPage1.dart';
import 'package:wqfni_v9/profile.dart';
import 'package:wqfni_v9/signUp.dart';

class Wqfni extends StatelessWidget {
  const Wqfni({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          height: size.height,
          //alignment: Alignment.centerLeft,

          decoration: const BoxDecoration(
            //image: DecorationImage(colorFilter: ColorFilter.mode(Color.fromRGBO(155, 98, 253, 0.2), BlendMode.dstATop), image: AssetImage('assets/road3.png'), alignment: Alignment.bottomRight,),
            color: Color.fromRGBO(155, 98, 253, 1.0),
          ),

          child: Stack(
            children: [
              Positioned(
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/road3.png'),
                            alignment: Alignment.bottomRight,),),
                  )),
              Positioned(
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(155, 98, 253, 0.2),
                                BlendMode.dstATop,),
                            image: AssetImage(
                                'assets/KEY0.CC-Parking-Svg-Png-Icon-Free-Download-Deal-Airport-Parking7.png',),
                            alignment: Alignment.topRight,),),
                  )),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.151,
                    ),
                    Container(
                      width: size.width * 0.67,
                      height: size.height * 0.6,

                      //alignment: Alignment.centerLeft,
                      //margin: const EdgeInsets.only(),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),),
                          color: Colors.white,),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.08,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    spreadRadius: -20,
                                    blurRadius: 50,
                                    offset: const Offset(0, 10),
                                  ),
                                ],),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(58), // Image radius
                                    child: Image.asset(
                                      'assets/Wqfni logo.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.053,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 15),
                            child: const Text(
                              'Your phone',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            // height: size.height * 0.04,
                          ),
                          Container(
                            alignment: Alignment.center,
                            //width: double.infinity,
                            child: Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0xffeeeeee),
                                          blurRadius: 20,
                                          offset: Offset(-10, 4),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.black.withOpacity(0.03),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        InternationalPhoneNumberInput(
                                          initialValue:
                                          PhoneNumber(isoCode: 'SA'),
                                          formatInput: false,
                                          selectorConfig: const SelectorConfig(
                                            selectorType: PhoneInputSelectorType
                                                .BOTTOM_SHEET,
                                          ),
                                          onInputChanged: (value) {},
                                          inputDecoration: InputDecoration(
                                            contentPadding: const EdgeInsets.only(
                                                bottom: 15,),
                                            border: InputBorder.none,
                                            hintText: '5xxxxxxxx',
                                            hintStyle: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 90,
                                          top: 10,
                                          bottom: 10,
                                          child: Container(
                                            height: 40,
                                            width: 1,
                                            color:
                                            Colors.black.withOpacity(0.13),
                                          ),
                                        ),
                                      ],
                                    ),),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "doesn't have an account?",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 13,),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const signUp(),),
                                              );
                                            },
                                            child: const Text(
                                              ' Sign Up',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      155, 98, 253, 1,),),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Column(children: [
                                  Row(children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const ReservationPage1(),),);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          padding: const EdgeInsets.all(0)),
                                      child: Image.asset(
                                        'assets/facebook.png',
                                        fit: BoxFit.fill,
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const profile(),),);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(
                                            Colors.white,),
                                        shape: MaterialStateProperty.all(
                                            const CircleBorder()),
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.all(0),),
                                      ),
                                      child: Image.asset(
                                        'assets/google.png',
                                        fit: BoxFit.cover,
                                        width: 40,
                                        height: 40,
                                      ),
                                    )
                                  ],)
                                ],)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.14,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: size.width*0.70,
                        height: size.height*0.072,
                        //alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(155, 98, 253, 1),),

                              elevation: MaterialStateProperty.all(10),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(18),),),),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300,),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
