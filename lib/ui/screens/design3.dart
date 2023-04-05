import 'dart:ui';

import 'package:first/main.dart';
import 'package:flutter/material.dart';
///stl
class Design3 extends StatelessWidget {
  const Design3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DesignSTF(),
    );
  }
}
///stf
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
              height: 20.0,
            ),
           ///1st row
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   margin: EdgeInsets.only(left: 30.0),
                   child: Icon(Icons.arrow_back,size: 35.0,),
                 ),
                 Container(
                   margin: EdgeInsets.only(right: 190.0,),
                   child: Text('Explore',
                     style: TextStyle(
                       fontSize: 24.0,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                 ),
               ],
             ),
           ),
            ///2nd row
            SizedBox(
              height: 33.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
               child: TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.search),
                     suffixIcon: Icon(Icons.keyboard_voice_outlined),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30.0),
                     ),
                     filled: true,
                     hintStyle: TextStyle(color: Colors.grey[800]),
                     hintText: "Search",
                     fillColor: Colors.white70),
               ),
            ),
            ///3rd row
            SizedBox(
              height: 18.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCircularBox(
                      imagePath: "assets/images/news.jpg",
                      title: 'News'
                  ),
                  MyCircularBox(
                      imagePath: "assets/images/blur.jpg",
                      title: 'Culture'
                  ),
                  MyCircularBox(
                      imagePath: "assets/images/blur2.jpg",
                      title: 'City'
                  ),
                ],
              ),
            ),
            ///4th row
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0,),

                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/education (1).jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child: Text('Education',
                        style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),),
                    ),

                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/blur6.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child:Text('Design',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),),
                    ),

                  ),


                  Container(
                    margin: EdgeInsets.only(right: 10.0,),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/blur4.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child: Text('Politics',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),),
                    ),

                  ),
                ],
              ),
            ),
            ///5th row
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0,),

                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/blur3.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child: Text('Natural',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 22.0,
                        ),),
                    ),

                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/blur8.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child:Text('Live',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),),
                    ),

                  ),


                  Container(
                    margin: EdgeInsets.only(right: 10.0,),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/blur5.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child: Text('Productive',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            ///6th row
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/blur7.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child:Text('Gym',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0,),
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black,width: 3),
                      image: DecorationImage(
                        image: AssetImage("assets/images/education (2).jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    child: Center(
                      child: Text('Others',
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///7th row
            SizedBox(
              height: 25.0,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0,),
                    child: Icon(Icons.local_fire_department_rounded,color: Colors.yellow,size: 40.0,),
                  ),
                  Container(
                    child: Text('#trending',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///8th row
            Container(
              height: 175,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.0,),
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
                              margin: EdgeInsets.only(left: 20.0,),
                              child: Text('Effectiveness an..',style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 21.0,

                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7.0,),
                              child: Text('Brooklyn Simmons',style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,

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
                                fontSize: 21.0,

                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(),
                              child: Text('Cameron Williamson',style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,

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
                                fontSize: 21.0,

                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7.0,),
                              child: Text('Brooklyn Simmons',style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,

                              ),),
                            ),

                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyCircularBox extends StatelessWidget {
  final String imagePath ;
  final String title ;
  const MyCircularBox({Key? key, required this.imagePath, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0,),
      width: MediaQuery.of(context).size.width*0.3,
      height: MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.0,),
      ),
      child: Center(
        child: Text(title,
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 22.0,
        ),
        ),
      ),

    );
  }
}
