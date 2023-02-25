import 'package:drapplist/model/FoodModel.dart';
import 'package:drapplist/screen/notifi.dart';
import 'package:drapplist/utils/color.dart';
import 'package:drapplist/utils/next_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FoodModelItem> items = [];
  List<PatientItem> itemsp = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.addAll(CategoryDataModel.categoryitems);
    itemsp.addAll(CategoryDataModel.patientitems);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/manimg.png"),
                    radius: 25,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Feb, 2023',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      nextScreen(context, NotifiScreen());
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: dcolor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/icons/notific.png",
                              width: 18,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 18,
                            height: 18,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Color(0xff9492e4),
                                border: Border.all(width: 4, color: colorDark),
                                shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good morning, Dr. Lucky',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'You have 15 patients today',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              margin: const EdgeInsets.symmetric( vertical: 10),
              child: ListView.builder(
                itemCount: items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    FoodModelItem itemsnew = items[index];
                return Container(
                  height: 120,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: itemsnew.isNew? BoxDecoration(
                    color: dcolor,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ) : null,
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: itemsnew.isNew? Color(0xff9492e4) : dcolor,
                          shape: BoxShape.circle
                        ),
                        child: Center(child: Text(itemsnew.title),),
                      ),
                      SizedBox(height: 10,),
                      Text(itemsnew.subtitle,
                        style: TextStyle(color: itemsnew.isNew? Colors.white : dcolor, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                      SizedBox(height: 10,),
                      itemsnew.plist.length >0 ? Row(children: [
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Color(0xff9492e4),
                              shape: BoxShape.circle
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Color(0xff9492e4),
                              shape: BoxShape.circle
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Color(0xff9492e4),
                              shape: BoxShape.circle
                          ),
                        ),
                      ],):Container(),


                    ],
                  ),
                );
              }),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: itemsp.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      PatientItem itemsnew = itemsp[index];
                      return Container(
                        height: 150,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Text(itemsnew.aTime,
                                style: TextStyle(color:Colors.white, fontSize: 15,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              margin: const EdgeInsets.only(left: 10),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: dcolor,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(itemsnew.pImg),
                                        radius: 25,
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(itemsnew.pName,
                                              style: TextStyle(color:Colors.white, fontSize: 12,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(itemsnew.pAge,
                                                  style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                                SizedBox(width: 10,),
                                                Container(margin: const EdgeInsets.only(top: 5),width: 5,height: 5,decoration: BoxDecoration(color: textcolor,shape: BoxShape.circle),),
                                                SizedBox(width: 10,),
                                                Text(itemsnew.pType,
                                                  style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                              ],),

                                          ],),
                                        Text(itemsnew.time,
                                          style: TextStyle(color:textcolor, fontSize: 10,letterSpacing: 1.0, fontWeight: FontWeight.w900),),
                                      ],),


                                  ],),
                                  itemsnew.appState ?
                                  Container(height: 40,width: 40,decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(child: Icon(Icons.check,color: Colors.white,),),):
                                  Container(height: 40,width: 40,decoration: BoxDecoration(
                                    color: Color(0xff3d3c41),
                                    borderRadius: BorderRadius.circular(10)
                                  ),)
                                ],
                              ),
                            )

                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
