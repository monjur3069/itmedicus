import 'dart:async';

import 'package:flutter/material.dart';
import 'package:itmedicus/pages/new_brand_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> images = [
    'images/img1.png',
    'images/img1.png',
    'images/img1.png',
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {

    final screenWidth = (MediaQuery.of(context).size.width - 280 )/3;

    return Scaffold(
      backgroundColor: Color(0xfff2f6ff),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12,top: 10),
        child: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hi, Rakib Hasan',
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),),
              Padding(
                padding: const EdgeInsets.only(right: 12.0,top: 5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xbbffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff1479FF).withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0,5)
                        ),
                      ]
                  ),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Center(child: Icon(Icons.notifications_none,color: Color(0xff1479ff),)),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.red
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text('BPL',style: TextStyle(color: Color(0xff284596),fontSize: 30,fontWeight: FontWeight.bold),),
          Text('E-ducare',style: TextStyle(color: Color(0xff284596),fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(0),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff2f6ff),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: PageView.builder(
                itemCount: images.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                        child: Image.asset(images[index],fit: BoxFit.cover,)),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildIndicator(),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => NewBrandListPage())),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff63cefa),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('images/product_brief.png',height: 50,width: 50,fit: BoxFit.cover,),
                      SizedBox(height: 5,),
                      Text('Product Brief',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xff4bc989),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/memo.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Memo/Circular',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffa28eed),
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/digital_wpm.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Digital WPM',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: screenWidth,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container (
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffff7170),
                    borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/survey.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Survey',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffecac4a),
                    borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/exam.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Exam/Quiz',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xfffb80b9),
                    borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/campaign.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Campaign',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: screenWidth,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xff63cefa),
                    borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/feedback.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Feedback',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xff4bc989),
                    borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/cycle_plan.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Cycle Plan',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffa28eed),
                    borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('images/notice.png',height: 50,width: 50,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Notice',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xfffcfdff),
                borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff1479FF).withOpacity(0.5),
                        spreadRadius: 6,
                        blurRadius: 30,
                        offset: Offset(0,5)
                    ),
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Color(0xff1479ff),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(child: Image.asset('images/home.png',height: 33,width: 33,fit: BoxFit.cover,)),
                      ),
                      Image.asset('images/placeholder.png',height: 25,width: 25,fit: BoxFit.cover,)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],
        ),
        ),
      ),
    )
    ,
    );
  }
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < images.length; i++) {
      indicators.add(
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _currentPage == i ? 30 : 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: _currentPage == i ? Color(0xff284596) : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
