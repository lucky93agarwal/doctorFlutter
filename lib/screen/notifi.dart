import 'package:drapplist/model/FoodModel.dart';
import 'package:drapplist/utils/color.dart';
import 'package:drapplist/utils/next_screen.dart';
import 'package:flutter/material.dart';

class NotifiScreen extends StatefulWidget {
  const NotifiScreen({Key? key}) : super(key: key);

  @override
  State<NotifiScreen> createState() => _NotifiScreenState();
}

class _NotifiScreenState extends State<NotifiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Notifications',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff9492e4),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: dcolor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "Appointments",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: dcolor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "Updates",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: dcolor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "Other",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.only(left: 20,right: 20, top: 20),
                child: ListView(
                  children: [
                    Text(
                      'Today',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                        color: dcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/mentwo.jpg'),
                          radius: 25,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Aman Singh',
                            style: TextStyle(color:Colors.white, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New appointment',
                                  style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                SizedBox(width: 22,),
                                Text('Feb 25, 11:20 - 11:50',
                                  style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                            ],)
                        ],)
                      ],),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                        color: dcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/girlimg.jpg'),
                                radius: 25,
                              ),
                              Positioned(
                                left: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xff9492e4),
                                      border: Border.all(width: 2, color: colorDark),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Avinash Kumar',
                                style: TextStyle(color:Colors.white, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('New appointment',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                  SizedBox(width: 22,),
                                  Text('Feb 25, 12:20 - 12:45',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                ],)
                            ],)
                        ],),
                    ),

                    SizedBox(height: 10,),
                    Text(
                      'Yesterday',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                        color: dcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/girlone.jpg'),
                                radius: 25,
                              ),
                              Positioned(
                                left: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Color(0xff9492e4),
                                      border: Border.all(width: 2, color: colorDark),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Aman Singh',
                                style: TextStyle(color:Colors.white, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('New appointment',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                  SizedBox(width: 22,),
                                  Text('Feb 25, 11:20 - 11:50',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                ],)
                            ],)
                        ],),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                        color: dcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/menone.jpg'),
                            radius: 25,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shantanu Gupta',
                                style: TextStyle(color:Colors.white, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('New appointment',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                  SizedBox(width: 22,),
                                  Text('Feb 25, 12:20 - 12:45',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                ],)
                            ],)
                        ],),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      decoration: BoxDecoration(
                        color: dcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/girlnine.jpg'),
                            radius: 25,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Avinash Kumar',
                                style: TextStyle(color:Colors.white, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('New appointment',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                  SizedBox(width: 22,),
                                  Text('Feb 25, 12:20 - 12:45',
                                    style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                ],)
                            ],)
                        ],),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
