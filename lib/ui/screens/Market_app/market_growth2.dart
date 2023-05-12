import 'package:dotted_border/dotted_border.dart';
import 'package:first/colors/colors.dart';
import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Market_growth2 extends StatelessWidget {
  const Market_growth2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Market_growth_STF(),
    );
  }
}
///stf
class Market_growth_STF extends StatefulWidget {
  const Market_growth_STF({Key? key}) : super(key: key);

  @override
  State<Market_growth_STF> createState() => _Market_growth_STFState();
}

class _Market_growth_STFState extends State<Market_growth_STF> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ///1ST
            SizedBox(
              height: 25.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 28.0,),
                        child: Text('Welcome back,',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0,),
                        child: const Text(
                          'Carolina Terner',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          // margin: EdgeInsets.only(right: 20.0,),
                          width: MediaQuery.of(context).size.width *0.11,
                          height:  MediaQuery.of(context).size.height *0.06,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/girl2.png"),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(40.0,),
                            // color: Colors.red,
                          ),

                        ),

                        Container(
                          margin: EdgeInsets.only(top: 22.0,right: 50),
                          width: MediaQuery.of(context).size.width *0.06,
                          height:  MediaQuery.of(context).size.height *0.025,
                          decoration: BoxDecoration(
                            color: Colors. black,
                            borderRadius: BorderRadius.circular(40.0,),
                            // color: Colors.red,
                          ),
                          child: Center(child: Text('2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20.0,))),

                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            ///2nd
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Try to find ...',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  border: InputBorder.none,
                ),
              ),
            ),
            ///3rd
            SizedBox(
              height: 60.0,
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 90.0),
                        child: Text('Task-based',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Text('explanation-process',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30.0,
                          ),
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
            ///4th row
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 25,
                    ),

                    DottedBorder(
                      strokeCap: StrokeCap.butt,
                      borderType: BorderType.RRect,
                      color: Colors.black,
                      strokeWidth: 6,
                      radius: const Radius.circular(25),
                      child: Container(
                        //margin: EdgeInsets.only(left: 30.0),
                        width: MediaQuery.of(context).size.width *0.28,
                        height:  MediaQuery.of(context).size.height *0.17,
                        decoration: BoxDecoration(
                          color:  Colors.grey,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *0.15,
                              height: MediaQuery.of(context).size.height *0.04,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(child: Text('Add task',style: TextStyle(fontWeight: FontWeight.w600,),)),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Center(
                              child: Text('Creatives',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
                            ),
                            Center(
                              child: Text('for branging',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0,),
                      width: MediaQuery.of(context).size.width *0.42,
                      height:  MediaQuery.of(context).size.height *0.17,
                      decoration: BoxDecoration(
                        color:  Colors.grey,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 20.0,
                           ),
                           Container(
                             margin: EdgeInsets.only(left: 20.0,),
                             child: Row(
                               children: [
                                 Container(
                                   width: MediaQuery.of(context).size.width *0.15,
                                   height: MediaQuery.of(context).size.height *0.04,
                                   decoration: BoxDecoration(
                                     color: Colors.lightBlue,
                                     borderRadius: BorderRadius.circular(10.0),
                                   ),
                                   child: Center(child: Text('Review',style: TextStyle(fontWeight: FontWeight.w600,),)),
                                 ),
                               ],
                             ),
                           ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                child: Text('Verification',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                           Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 child: Text('process with team',
                                   style: TextStyle(
                                     fontSize: 21.0,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0,),
                      width: MediaQuery.of(context).size.width *0.42,
                      height:  MediaQuery.of(context).size.height *0.17,
                      decoration: BoxDecoration(
                        color:  Colors.grey,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0,),
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *0.15,
                                  height: MediaQuery.of(context).size.height *0.04,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(child: Text('Add',style: TextStyle(fontWeight: FontWeight.w600,),)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                child: Text('Work with',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20.0),
                                child: Text('all working with u',
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ),
            ///5th row
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0,),
                  child: Text('Flows list',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.w600),),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30.0,),
                  child: Text('See all',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
            ///6th row
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0,),
                      child: const Text('Documentation verification',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                   Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 150.0,),
                          child: Text('3 min ago',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 30.0,),
                  width: MediaQuery.of(context).size.width *0.1,
                  height: MediaQuery.of(context).size.height *0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.greenAccent,
                  ),
                  child: Center(
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
            ),
            ///7th row
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0,),
                      child: const Text('Newbie onboarding',
                        style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 80.0,),
                          child: Text('5 min ago',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 30.0,),
                  width: MediaQuery.of(context).size.width *0.1,
                  height: MediaQuery.of(context).size.height *0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.greenAccent,
                  ),
                  child: Center(
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
            ),



          ],
        ),
      ),
    );
  }
}


