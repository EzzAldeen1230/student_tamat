import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:steudent_tamam/screen/add_student.dart';
import 'package:steudent_tamam/screen/video_detiels.dart';

class Math_page extends StatefulWidget {
  const Math_page({Key? key, required String title}) : super(key: key);

  @override
  _Math_pageState createState() => _Math_pageState();
}

class _Math_pageState extends State<Math_page> {
  List<String> items = ["Item1", "Item2", "Item3"];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f2f6ff"),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20
            ),
            child: Row(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(Icons.person_rounded),
                    onPressed: (){
                      Navigator.push( context, MaterialPageRoute( builder: (context) => AddStudent(title: 'Math_page',)), );


                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 140
                  ),
                  color: Colors.transparent,

                  height: 60,
                  width: 200,
                  child: DropdownButton(
                    hint: Text("عزالدين قدري جمال"),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.arrow_drop_down_rounded),
                    iconSize: 36,
                    isExpanded: true,


                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    value: selectedItem,
                    onChanged: (newValue) {
                      setState(() {
                        selectedItem = newValue as String?;
                      });
                    },
                    items: items.map((selectedItem) {
                      return DropdownMenuItem(
                          value: selectedItem, child: Text(selectedItem));
                    }).toList(),
                  ),
                ),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, right: 30),
                child: Column(
                  children: [
                    Container(
                        child: Text(
                      "الرياضيات",
                      style: TextStyle(fontSize: 30, color: HexColor("496499")),
                    )),
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "الصف الثامن",
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10), blurRadius: 20, color: Colors.grey)
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            height: 533,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 30, top: 10, bottom: 10),
                    child: Text(
                      "الوحدات الدراسية",
                      style: TextStyle(color: HexColor("496499"), fontSize: 20),
                    )),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    padEnds: true,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),

                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(

                      builder: (BuildContext context) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: HexColor("6386cc")),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            right: 15,
                                            top: 60,
                                            child: Text(
                                              'معادلات الدرجة الاولى',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.white),
                                            )),
                                        Positioned(
                                            right: 14,
                                            bottom: 25,
                                            child: Text(
                                              "الدرس 23 الوحده 146",
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.white),
                                            )),
                                        Positioned(
                                          right: 5,
                                          bottom: 10,
                                          child: Container(
                                            width: 295,
                                            child: StepProgressIndicator(
                                              totalSteps: 2,
                                              currentStep: 20,
                                              size: 5,
                                              selectedColor: Colors.amber,
                                              unselectedColor: Colors.black,
                                              roundedEdges: Radius.circular(10),
                                              gradientColor: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Colors.blueGrey,
                                                  Colors.white
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    top: 10,
                                    left: 30,
                                    child: Container(
                                        width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.white,
                                        ),
                                        child: Center(child: Text("$i")))),
                              ],
                            ));
                      },
                    );
                  }).toList(),
                ),
                Container(
                    margin: EdgeInsets.only(right: 30, bottom: 10),
                    child: Text(
                      "دروس الوحدة",
                      style: TextStyle(color: HexColor("496499"), fontSize: 20),
                    )),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoDetiels(
                                  title: 'Video',
                                )),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        "معادلة من الدرجة الاولى في متغير واحد",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: HexColor("496499")),
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(right: 10),

                                      child: Text(
                                    "3   ساعات  و 12  دقيقة",
                                    style: TextStyle(fontSize: 10,color: Colors.grey),
                                  ))
                                ]),
                            Container(
                              margin: EdgeInsets.only(bottom: 6),
                              height: 35,
                              width: 40,
                              child: Image(
                                image: AssetImage(
                                  'assets/img/Group 707.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "معادلة من الدرجة الاولى في متغير واحد",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("496499")),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 10),

                                    child: Text(
                                      "3   ساعات  و 12  دقيقة",
                                      style: TextStyle(fontSize: 10,color: Colors.grey),
                                    ))
                              ]),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 35,
                            width: 40,
                            child: Image(
                              image: AssetImage(
                                'assets/img/Group 717.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "معادلة من الدرجة الاولى في متغير واحد",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("496499")),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 10),

                                    child: Text(
                                      "3   ساعات  و 12  دقيقة",
                                      style: TextStyle(fontSize: 10,color: Colors.grey),
                                    ))
                              ]),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 35,
                            width: 40,
                            child: Image(
                              image: AssetImage(
                                'assets/img/Group 717.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "معادلة من الدرجة الاولى في متغير واحد",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("496499")),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 10),

                                    child: Text(
                                      "3   ساعات  و 12  دقيقة",
                                      style: TextStyle(fontSize: 10,color: Colors.grey),
                                    ))
                              ]),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 35,
                            width: 40,
                            child: Image(
                              image: AssetImage(
                                'assets/img/Group 717.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "معادلة من الدرجة الاولى في متغير واحد",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("496499")),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 10),

                                    child: Text(
                                      "3   ساعات  و 12  دقيقة",
                                      style: TextStyle(fontSize: 10,color: Colors.grey),
                                    ))
                              ]),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 35,
                            width: 40,
                            child: Image(
                              image: AssetImage(
                                'assets/img/Group 717.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "معادلة من الدرجة الاولى في متغير واحد",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("496499")),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 10),

                                    child: Text(
                                      "3   ساعات  و 12  دقيقة",
                                      style: TextStyle(fontSize: 10,color: Colors.grey),
                                    ))
                              ]),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 35,
                            width: 40,
                            child: Image(
                              image: AssetImage(
                                'assets/img/Group 717.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "معادلة من الدرجة الاولى في متغير واحد",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("496499")),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(right: 10),

                                    child: Text(
                                      "3   ساعات  و 12  دقيقة",
                                      style: TextStyle(fontSize: 10,color: Colors.grey),
                                    ))
                              ]),
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 35,
                            width: 40,
                            child: Image(
                              image: AssetImage(
                                'assets/img/Group 717.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
