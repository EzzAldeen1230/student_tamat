import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:steudent_tamam/screen/add_student.dart';
import 'package:steudent_tamam/screen/math_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> items = ["Item1", "Item2", "Item3"];
    String? selectedItem;
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
                      "مرحبا",
                      style: TextStyle(fontSize: 30, color: HexColor("496499")),
                    )),
                    Container(
                        margin: EdgeInsets.only(
                          right: 20
                        ),
                        child: Text("الصف الثامن",style: TextStyle(color: Colors.grey),)),
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
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 170,

                  childAspectRatio: 1,
              ),
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                        padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,  GestureDetector(
                  onTap: (){
                    Navigator.push( context, MaterialPageRoute( builder: (context) => Math_page(title: 'Math_page',)), );

                  },
                  child: Card(


                    color: HexColor("#ccddff"),
                    child: Stack(
                      children: [
                        Container(
                          child: Image(image: AssetImage('assets/img/MaskGrou.png',) ),
                          padding: EdgeInsets.all(2.0),

                        ),
                        Positioned(
                          bottom: 30,
                          right: 30,

                          child: Container(

                            child: Text("الرياضيات",style: TextStyle(color:HexColor("#496499") ,fontSize: 15),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 14,

                          child: Container(

                            child: Text("وحدة 24 ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 70,

                          child: Container(

                            child: Text("120 الدرس ",style: TextStyle(color:HexColor("#496499") ,fontSize: 10),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                ,

              ],
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
