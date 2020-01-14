import 'package:flutter/material.dart';
import 'package:medical_app/AppointmentPage.dart';
import 'package:medical_app/account.dart';
import 'package:medical_app/main.dart';

class BottomBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomBarState();
  }
}

class BottomBarState extends State<BottomBar>{

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          title: Text("Home"),
          icon:IconButton(
            icon: Icon(Icons.home,
              size: 28,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
          ),
          activeIcon: Icon(Icons.home,
            color: Colors.orange,
          size: 18,
          )
        ),

        BottomNavigationBarItem(
          title: Text("Bookings"),
          icon: IconButton(
            icon: Icon(Icons.library_books,
              size: 28,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AppointmentPage()));
            },
          ),
            activeIcon: Icon(Icons.collections_bookmark,
              color: Colors.orange,
              size: 18,
            ),
        ),

        BottomNavigationBarItem(
          title: Text("Account"),
          icon: IconButton(
            icon: Icon(Icons.account_circle,
              size: 28,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
            },
          ),
            activeIcon: Icon(Icons.account_circle,
              color: Colors.orange,
              size: 18,
            ),
        ),

      ],
    );
  }
}