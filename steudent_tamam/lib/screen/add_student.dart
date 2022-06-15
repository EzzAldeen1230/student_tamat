import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home.dart';

class AddStudent extends StatefulWidget {
  AddStudent({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    List<String> items = ["Item1", "Item2", "Item3"];
    String? selectedItem;

    return Scaffold(
      backgroundColor: HexColor("#f2f6ff"),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 170),
            child: AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(milliseconds: 1200),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 200.0,
                      width: 400.0,
                      child: Column(
                        children: [
                          Center(
                              child: Image(
                                  image: AssetImage(
                            'assets/img/undraw_Profile_.png',
                          )) //put your logo here

                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: "Name ",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: "Name ",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: DropdownButton(
                          hint: Text("select Item"),
                          dropdownColor: Colors.white70,
                          icon: Icon(Icons.arrow_drop_down),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: DropdownButton(
                          hint: Text("select Item"),
                          dropdownColor: Colors.white70,
                          icon: Icon(Icons.arrow_drop_down),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: DropdownButton(
                            hint: Text("select Item"),
                            dropdownColor: Colors.white70,
                            icon: Icon(Icons.arrow_drop_down),
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
                                  value: selectedItem,
                                  child: Text(selectedItem));
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.indigo,
                        child: Text(
                          "دخول",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
