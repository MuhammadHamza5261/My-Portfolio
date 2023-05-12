import 'package:first/main.dart';
import 'package:flutter/material.dart';
///
class ListtileScreen extends StatelessWidget {
  const ListtileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0,178,25,1),
        centerTitle: true,
        title: Text('ListTile'),
      ),
      body: ListtileSTF(),
    );
  }
}
///stf
class ListtileSTF extends StatefulWidget {
  const ListtileSTF({Key? key}) : super(key: key);

  @override
  State<ListtileSTF> createState() => _ListtileSTFState();
}

class _ListtileSTFState extends State<ListtileSTF> {
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
            Container(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.car_rental_outlined,size: 32.0,),
                    title: Text('Car',style: TextStyle(fontSize: 22.0,),),
                    trailing: Icon(Icons.more_vert,size: 30.0,),
                  ),
                  ListTile(
                    leading: Icon(Icons.card_membership_rounded,size: 32.0,),
                    title: Text('Card Membership',style: TextStyle(fontSize: 22.0,),),
                    trailing: Icon(Icons.add,size: 30.0,),
                  ),
                  ListTile(
                    leading: Icon(Icons.four_g_mobiledata_outlined,size: 32.0,),
                    title: Text('4g Service are available',style: TextStyle(fontSize: 22.0,),),
                    trailing: Icon(Icons.add,size: 30.0,),
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

