import 'dart:async';

import 'package:flutter/material.dart';

class NewBrandListPage extends StatefulWidget {
  const NewBrandListPage({Key? key}) : super(key: key);

  @override
  State<NewBrandListPage> createState() => _NewBrandListPageState();
}

class _NewBrandListPageState extends State<NewBrandListPage> {
  List<String> images = [
    'images/img1.png',
    'images/img1.png',
    'images/img1.png',
  ];
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = (MediaQuery.of(context).size.width - 280) / 3;

    return Scaffold(
      backgroundColor: Color(0xfff2f6ff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 5),
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xbbffffff),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff1479FF).withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(0, 5)),
                                    ]),
                                child: Center(child: Icon(Icons.arrow_back)),
                              ),
                            ),
                          ),
                          Text(
                            'Products',
                            style: TextStyle(
                                color: Color(0xff284596),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0, top: 5),
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
                                        offset: Offset(0, 5)),
                                  ]),
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
                                      Center(
                                          child: Icon(
                                            Icons.notifications_none,
                                            color: Color(0xff1479ff),
                                          )),
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: Container(
                                          height: 8,
                                          width: 8,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),
                                              color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xfffcfdff),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: Center(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'images/img2.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xfffcfdff),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff1479FF).withOpacity(0.5),
                                          spreadRadius: 6,
                                          blurRadius: 30,
                                          offset: Offset(0, 5)),
                                    ]),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: searchController,
                                  decoration: InputDecoration(
                                      hintText: 'Search here...',
                                      hintStyle: TextStyle(
                                          color: Color(0xff1479ff),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.0))),
                                      fillColor: Color(0xfffcfdff),
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Color(0xff1479ff),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.clear,
                                        color: Color(0xff1479ff),
                                        size: 15,
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff63cefa),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'images/filter.png',
                                      height: 20,
                                      width: 20,
                                      fit: BoxFit.cover,
                                    ))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 300,
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Color(0xfffcfdff)),
                                    height: 100,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Container(
                                            height: 80,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(
                                                  Radius.circular(16),
                                                ),
                                                color: Color(0xffffb971)),
                                            child: Center(
                                                child: ClipRRect(
                                                    borderRadius: const BorderRadius.all(
                                                      Radius.circular(16),
                                                    ),
                                                    child: Image.asset(
                                                      'images/sergel.png',
                                                      height: 37,
                                                      width: 50,
                                                      fit: BoxFit.cover,
                                                    ))),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Surgel',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff284596)),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                'Esomeprazol',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff2d417a)),
                                              ),
                                              SizedBox(height: 6),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const Icon(
                                                    Icons.watch_later_outlined,
                                                    color: Color(0xff2d417a),
                                                    size: 16,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '9:00 - 11:00 AM',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Color(0xff2d417a)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 40.0, right: 10),
                                          child: Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Color(0xff19ee19),
                                              borderRadius: BorderRadius.circular(22),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Guideline',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        //time length
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
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
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
