import 'package:first/main.dart';
import 'package:flutter/material.dart';

import 'design2.dart';
///stl
class design1 extends StatelessWidget {
  const design1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: designSTF(),
    );
  }
}
///stf
class designSTF extends StatefulWidget {
  const designSTF({Key? key}) : super(key: key);

  @override
  State<designSTF> createState() => _designSTFState();
}

class _designSTFState extends State<designSTF> {
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
          ///1st row
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 40.0,),
                      child: const Text('Find the Best',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 17.0,),
                          child: Text('Podcast',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.keyboard_voice_sharp,size: 30.0,color: Colors.purple,),
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                child: const Icon(Icons.search,size: 40.0,color: Colors.purple,),
              ),
                Container(
                  margin: EdgeInsets.only(right: 20.0,),
                  child: Icon(Icons.notification_add_sharp,size: 40.0,color: Colors.purple,),
                ),

              ],
            ),
            ///2nd row
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: width*0.9,
              margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0,)
                ),
                color: Colors.purpleAccent,
                child:  const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    children: [
                      Text('Listen to Podcast Premium Offer Listeners by Unlocking the benefits of paid podcast ubscriptions with Apple Podcasts',
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),),

                    ],
                  ),
                ),
              ),
            ),
            ///3rd row
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Container(
                    child: Text('Popular & Trending',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(Icons.local_fire_department,color: Colors.orange,size: 35.0,),
                  ),
                ],
              ),
            ),
            ///4th row
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width *0.36,
                          height: MediaQuery.of(context).size.height*0.21,
                          child: Card(
                            color: Colors.deepPurpleAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0,)
                            ),
                            child: Image.asset('assets/images/boy.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Text('Effectiveness an..',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,

                          ),),
                        ),
                        Container(
                          child: Text('Brooklyn Simmons',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,

                          ),),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          width: MediaQuery.of(context).size.width *0.36,
                          height: MediaQuery.of(context).size.height*0.21,
                          child: Card(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0,)
                            ),
                            child: Image.asset('assets/images/girl3.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25.0,right: 20.0,),
                          child: Text('Interview pass..',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,

                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(),
                          child: Text('Cameron Williamson',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,

                          ),),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          width: MediaQuery.of(context).size.width *0.36,
                          height: MediaQuery.of(context).size.height*0.21,
                          child: Card(
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0,)
                            ),
                            child: Image.asset('assets/images/boy2.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50.0,),
                          child: Text('Best an..',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,

                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 7.0,),
                          child: Text('Brooklyn Simmons',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,

                          ),),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ),
            ///5th row
            SizedBox(
              height: 12.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    child: Text('Continue Listening',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.headset_outlined,color: Colors.grey,size: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            ///6th row
            SizedBox(
              height: 10.0,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.17,
                    height: MediaQuery.of(context).size.height*0.1,
                    child: Card(
                      color: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0,)
                      ),
                      child: Image.asset('assets/images/boy2.png'),


                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Episode 11 - DuckTales',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('Jan 15,2023',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child:   InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Design2()));
                      },
                        child: const Icon(Icons.more_vert,size: 30.0,)),
                  ),
                ],
              ),
            ),
            ///7th row
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Classic gaming today',
                    style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 20.0,
                    ),
                  ),
                  Text('Every week we look at the gamimg experince of the past,',
                    style: TextStyle(
                      fontWeight:
                      FontWeight.w400,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}




