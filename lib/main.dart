import 'package:flutter/material.dart';
import 'package:medical_app/Home/BottomBar.dart';
import 'package:medical_app/Home/HomeBody.dart';
import 'package:medical_app/Home/HomeDrawer.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),

        body:HomeBody(),

        bottomNavigationBar: BottomBar(),

        drawer:HomeDrawer(),

        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.orange,
          icon: Icon(Icons.check_circle_outline,
          color: Colors.white,
          ),
          label: Text("Load",style: TextStyle(
            color: Colors.white
          ),),

          onPressed: (){

          },
        ),
      ),
    );
  }
}
