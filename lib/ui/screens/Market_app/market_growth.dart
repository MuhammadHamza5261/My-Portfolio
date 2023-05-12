import 'package:first/main.dart';
import 'package:flutter/material.dart';

import 'market_growth2.dart';
///stl
class Market_Growth extends StatelessWidget {
  const Market_Growth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: MarketGrowthSTF(
      ),
    );
  }
}
///stf
class MarketGrowthSTF extends StatefulWidget {
  const MarketGrowthSTF({Key? key}) : super(key: key);

  @override
  State<MarketGrowthSTF> createState() => _MarketGrowthSTFState();
}

class _MarketGrowthSTFState extends State<MarketGrowthSTF> {
  ///Add Animation in flutter
  bool _isBold = false;
  bool _isItalic = false;
  double _fontSize = 16.0;
  Color _color = Colors.black;

  late double width;
  late double height;

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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.0,),
                    width: MediaQuery.of(context).size.width *0.1,
                    height: MediaQuery.of(context).size.height *0.05,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0,)
                    ),
                    child: Icon(Icons.dashboard_customize_sharp,size: 25.0,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25.0,),
                    child: Icon(Icons.menu_outlined,size: 35.0,),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Column(
                children: [
                  Text('Market',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
                  Text('your growth',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
                  Text('strategy',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
                  Image.asset('assets/images/market.png',width: 370,),
                  SizedBox(
                    height: 35.0,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Market_growth2()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      height: MediaQuery.of(context).size.height *0.08,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35.0,)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Get Started',style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.w600),),
                          Container(
                            width: MediaQuery.of(context).size.width *0.1,
                            height: MediaQuery.of(context).size.height *0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Icon(Icons.arrow_forward_outlined,size: 30.0,color: Colors.pink,),
                          ),
                        ],
                      ),
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

