import 'package:flutter/material.dart';
import 'package:medical_app/Details.dart';
import 'package:medical_app/Home/HomeBody.dart';
import 'package:medical_app/appointList.dart';
import 'package:provider/provider.dart';

class AppointmentPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>AppointList(),
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon:Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                }
            ),
            title: Text("Appointment Page"),
          ),

          floatingActionButton: FloatingActionButton(
            tooltip: "Make appointment",
            child: Icon(Icons.add),
            backgroundColor:Colors.orange,
            onPressed: (){},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

          bottomNavigationBar: BottomAppBar(
            color: Colors.blue,
            shape: CircularNotchedRectangle(),
            notchMargin: 5.0,
            child: Container(
              height: 50.0,
            ),
          ),
          body: SafeArea(
              child: Consumer<AppointList>(
                builder: (context,homeinstance,child){
                  return ListView.builder(
                    itemCount: homeinstance.applist.length,
                    itemBuilder: (BuildContext context,int index){
                      return Card(
                        elevation: 5.0,
                        margin: EdgeInsets.all(4.0),
                        child: ListTile(
                          leading: Icon(Icons.touch_app),
                          title: Text(homeinstance.applist[index].name,style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          subtitle: Text("Booked! Click to cancel"),
                          onTap: (){},
                          trailing: Column(
                            children: <Widget>[
                              Text("1$index/11/2019",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                color: Colors.blue
                              )),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text("Valid upto -",style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.red
                              ),),
                              Text("9 PM",style: TextStyle(
                               fontWeight: FontWeight.bold
                              )),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
          ),
        ),
      ),
    );
  }
}