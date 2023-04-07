import 'package:first/main.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
///stl
class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavSTF(),
    );
  }
}
///stf
class BottomNavSTF extends StatefulWidget {

  const BottomNavSTF({Key? key}) : super(key: key);

  @override
  State<BottomNavSTF> createState() => _BottomNavSTFState();
}

class _BottomNavSTFState extends State<BottomNavSTF> {
  ///apply bottom nav bar
   int _selectedIndex = 0;
   static const List<Widget>_widgetOptions = <Widget>[
     Text('Home Page',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30.0,),),
     Text('Search Page',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30.0,),),
     Text('Profile Page',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30.0,),),
   ];


   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

   late double height;
  late double width;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ///Bottom nav bar
              Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


