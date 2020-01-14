import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Account :",style: TextStyle(
              color: Colors.white
            ),),
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
              Navigator.pop(context);
            }),
            backgroundColor: Colors.green,
          ),
          body: Column(
            children: <Widget>[
              Container(
                height: 280.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(300.0, 130.0)
                  )
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("An Apple a day,",style: TextStyle(
                           fontSize: 48.0
                          ),),
                          Text("doctor keeps away!",style: TextStyle(
                              fontSize: 30.0
                          ),)
                        ],
                      ),
                      margin: EdgeInsets.only(top: 30.0,left: 10.0),
                    ),
                    Positioned(
                      child: GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          backgroundImage: NetworkImage("https://previews.123rf.com/images/tanyastock/tanyastock1803/tanyastock180300490/97923644-user-icon-avatar-login-sign-circle-button-with-soft-color-gradient-background-vector-.jpg"),
                          radius: 50.0,
                        ),
                      ),
                      bottom: 10.0,
                      right: 30.0,
                    ),
                  ],
                )
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.check_circle_outline,size: 38.0,),
                      SizedBox(
                        height:10.0,
                      ),
                      Text("Total CheckUps: 12",style: TextStyle(
                        fontSize: 12.0
                      ),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.note_add,size: 38.0,),
                      SizedBox(
                        height:10.0,
                      ),
                      Text("Appointment: 3",style: TextStyle(
                          fontSize: 12.0
                      ),),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                child: Container(
                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Patient Name: Mr.Abhishek kumar",style: TextStyle(
                          fontSize: 15.0,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Age: 25",style: TextStyle(
                          fontSize: 15.0,
                        ),),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Sex: Male",style: TextStyle(
                              fontSize: 15.0,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Blood Group: B+",style: TextStyle(
                              fontSize: 15.0,
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Address: Sector-10, Rewari, Haryana",style: TextStyle(
                          fontSize: 15.0,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Pincode: 123401",style: TextStyle(
                          fontSize: 15.0,
                        ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                              onPressed: (){},
                            color: Colors.green,
                            child: Text("Update it!",style: TextStyle(
                              color: Colors.white,
                            ),),
                            elevation: 4.0,
                          ),
                          RaisedButton(
                            onPressed: (){},
                            color: Colors.red,
                            child: Text("Delete",style: TextStyle(
                              color: Colors.white,
                            ),),
                            elevation: 4.0,
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
