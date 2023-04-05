import 'package:first/main.dart';
import 'package:flutter/material.dart';

import 'design3.dart';
///stl
class Design2 extends StatelessWidget {
  const Design2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DesignSTF(),
    );
  }
}
///Stf
class DesignSTF extends StatefulWidget {
  const DesignSTF({Key? key}) : super(key: key);

  @override
  State<DesignSTF> createState() => _DesignSTFState();
}

class _DesignSTFState extends State<DesignSTF> {
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
            SizedBox(
              height: 15.0,
            ),
            ///1st row
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.arrow_back,size: 35.0,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.more_vert_outlined,size: 35.0,),
                  ),
                ],
              ),

            ),
            ///2nd row
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0,),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.175,
                    child: Card(
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23.0,),
                      ),
                      child: Image.asset('assets/images/girl6.png',height: 100,fit: BoxFit.cover,),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 60.0,),
                        child: Text('The Mindset',
                          style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0,),
                        child: Text('Meditation Podcast',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.0,

                      ),
                      Container(
                        margin: EdgeInsets.only(right:110.0,),
                        child: Text('10 Episodes',style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 32.0,),
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.065,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurpleAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0,)
                                ),
                              ),
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Design3()));
                                },
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 3.0,),
                                      child: Icon(Icons.add,color: Colors.white,size: 19.0,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 4.0,),
                                      child: Text('Follow',
                                        style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                          fontSize: 17.0,
                                      ),),
                                    ),
                                  ],
                                ),
                              )
                            ),
                          ),
                          Container(
                            child: Icon(Icons.screen_share_outlined,size: 35.0,),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
            ///3rd row
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 23.0,),
                    child: Text('As deep focus is crucial to significantly improve cognitive',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ],
              ),
            ),
            ///4th row
            Container(
              margin: EdgeInsets.only(left: 23.0,),
              child: Row(
                children: [
                  Container(
                    child: Text('or physical perfomance in any realm, this episode should',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),),
                  ),


                ],
              ),
            ),
            ///5th row
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 23.0,),
                    child: Text('be effective faster',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),),
                  ),
                ],
              ),
            ),
            ///6th row
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 23.0,),
                    child: Text('Available Episode (10)',
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                ],
              ),
            ),
            Container(
              height: 470,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          ///7th row
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20.0,),
                                  width: MediaQuery.of(context).size.width*0.17,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  child: Card(
                                    color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0,)
                                    ),
                                    child: Image.asset('assets/images/girl6.png',fit: BoxFit.cover,),


                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20.0,),
                                      child: Text('Episode 01',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Jan 15,2023',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 190.0,),
                                  child:   InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Design2()));
                                      },
                                      child: const Icon(Icons.more_vert,size: 35.0,)),
                                ),
                              ],
                            ),
                          ),
                          ///8th row
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 22.0,),
                                  child: Text('Welcome To The Mindset Mile',
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ///9th row
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 22.0,),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Know what this is about?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ),
                          ///10 row
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 23.0,),
                                  child: Icon(Icons.play_circle_fill_rounded,color: Colors.yellow,size: 35.0,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,),
                                  child: Text('29min',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30.0),
                                  child: Icon(Icons.screen_share_outlined,size: 30.0,),
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                    ///2nd column
                    Container(
                      child: Column(
                        children: [
                          ///7th row
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20.0,),
                                  width: MediaQuery.of(context).size.width*0.17,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  child: Card(
                                    color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0,)
                                    ),
                                    child: Image.asset('assets/images/girl5.png',fit: BoxFit.cover,),


                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20.0,),
                                      child: Text('Episode 02',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Jan 15,2023',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 190.0,),
                                  child:   InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Design2()));
                                      },
                                      child: const Icon(Icons.more_vert,size: 35.0,)),
                                ),
                              ],
                            ),
                          ),
                          ///8th row
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 22.0,),
                                  child: Text('Welcome To The Mindset Mile Will Change You',
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ///9th row
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 22.0,),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('In this episode we discuss how how making change',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ),
                          ///extra roe
                          Container(
                            margin: EdgeInsets.only(left: 22.0,),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('within ourselves ultimetly changes the world for the',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ),
                          ///2nd ectra
                          Container(
                            margin: EdgeInsets.only(left: 22.0,),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('better',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ),
                          ///10 row
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 23.0,),
                                  child: Icon(Icons.play_circle_fill_rounded,color: Colors.yellow,size: 35.0,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,),
                                  child: Text('29min',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30.0),
                                  child: Icon(Icons.screen_share_outlined,size: 30.0,),
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                    ///3rd Column
                    Container(
                      child: Column(
                        children: [
                          ///7th row
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20.0,),
                                  width: MediaQuery.of(context).size.width*0.17,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  child: Card(
                                    color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0,)
                                    ),
                                    child: Image.asset('assets/images/girl3.png',fit: BoxFit.cover,),


                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 20.0,),
                                      child: Text('Episode 03',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text('Jan 15,2023',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 190.0,),
                                  child:   InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Design2()));
                                      },
                                      child: const Icon(Icons.more_vert,size: 35.0,)),
                                ),
                              ],
                            ),
                          ),
                          ///8th row
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 22.0,),
                                  child: Text('Welcome To The Mindset Mile',
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ///9th row
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 22.0,),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Know what this is about?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ),
                          ///10 row
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 23.0,),
                                  child: Icon(Icons.play_circle_fill_rounded,color: Colors.yellow,size: 35.0,),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,),
                                  child: Text('29min',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30.0),
                                  child: Icon(Icons.screen_share_outlined,size: 30.0,),
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


