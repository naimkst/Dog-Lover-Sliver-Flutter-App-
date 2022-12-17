import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Amiradi", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500
                  ),),
                  Icon(Icons.dashboard_customize_outlined, size: 30,)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                width: size * 05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.1)
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 30,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ("Search Destinatino.."),
                          hintStyle: TextStyle(fontSize: 18),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Icon(Icons.mic, size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/01.png'),
                          Text("Beach", style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  );
                },),
            ),
            SizedBox(height: 30,),
            Container(
              height: 250,
              padding: EdgeInsets.only(left: 20),
              child: ListView.builder(
                padding: EdgeInsets.only(right: 10),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, item){
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.1),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/02.png', width: 180,),
                          Text('Lunan Beach', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                    );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
