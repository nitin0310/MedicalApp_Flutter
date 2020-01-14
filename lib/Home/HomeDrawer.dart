import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/account.dart';

class HomeDrawer extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    return HomeDrawerState();
  }
}

class HomeDrawerState extends State<HomeDrawer>{

  Color _color=Colors.red;
  Color check(){
    setState(() {
      if(_color==Colors.red){
        _color=Colors.green;
      }
      else
      {
        _color=Colors.red;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0,bottom: 50.0),
        child: Drawer(
          elevation: 20.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 230,
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  child: UserAccountsDrawerHeader(
                        accountName: Text("Nitin",style: TextStyle(
                          fontSize: 27.0,
                          decoration: TextDecoration.underline
                        ),),
                        otherAccountsPictures: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            backgroundImage: NetworkImage("https://previews.123rf.com/images/tanyastock/tanyastock1803/tanyastock180300490/97923644-user-icon-avatar-login-sign-circle-button-with-soft-color-gradient-background-vector-.jpg"),
                            radius: 50.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            backgroundImage: NetworkImage("https://previews.123rf.com/images/tanyastock/tanyastock1803/tanyastock180300490/97923644-user-icon-avatar-login-sign-circle-button-with-soft-color-gradient-background-vector-.jpg"),
                            radius: 50.0,
                          ),
                        ],
                        accountEmail: Text("npawalia03@gmail.com",style: TextStyle(
                            fontSize: 17.0
                        ),),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage("https://previews.123rf.com/images/tanyastock/tanyastock1803/tanyastock180300490/97923644-user-icon-avatar-login-sign-circle-button-with-soft-color-gradient-background-vector-.jpg"),
                      radius: 50.0,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.black87,
                        Colors.black,
                      ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    ),
                    ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 5.0,
                        margin: EdgeInsets.all(4.0),
                        child: ListTile(
                          leading: Icon(Icons.account_box,
                          color: Colors.blue
                            ,),
                          title: Text("Change Settings",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          subtitle: Text("Tap to change"),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Card(
                        elevation: 5.0,
                        margin: EdgeInsets.all(4.0),
                        child: ListTile(
                          leading: Icon(Icons.new_releases,color: Colors.blue,),
                          title: Text("Buy Medicines",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          subtitle: Text("Check rates"),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Card(
                        elevation: 5.0,
                        margin: EdgeInsets.all(4.0),
                        child: ListTile(
                          leading: Icon(Icons.monetization_on,color: Colors.blue,),
                          title: Text("Pending dues",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          subtitle: Text("Pay if any"),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Card(
                        elevation: 5.0,
                        margin: EdgeInsets.all(4.0),
                        child: ListTile(
                          leading: Icon(Icons.note,color: Colors.blue,),
                          title: Text("Check Reports",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          subtitle: Text("Tap to check"),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

                      Center(
                        child: RaisedButton(
                          onPressed: (){
                            check();
                          },
                          child: Text("Log Out",style: TextStyle(
                            color: Colors.white
                          ),),
                          elevation: 7.0,
                          color: _color,
                        ),
                      ),
                      FlatButton(
                        onPressed: (){},
                        child: Center(
                          child: Text("Check out developer here.",style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w800
                          ),),
                        ),
                      )

                    ],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}