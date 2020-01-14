import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Home/StackColumn1.dart';
import 'package:medical_app/appointList.dart';
import 'package:provider/provider.dart';
import '../Details.dart';

class HomeBody extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    return HomeBodyState();
  }

}

class HomeBodyState extends State<HomeBody>{

  List imgList=[

    "https://wallpaperaccess.com/full/619976.jpg",
    "http://iqsg.com/wp-content/uploads/2016/05/8973242-laptop-and-stethoscope1-1024x682.jpg",
    "https://i2.wp.com/startupdope.com/wp-content/uploads/2014/12/mom_park_iStock_000016737528Medium.jpg",
    "https://cdn.clipart.email/032e4d87254d71bb48f31ff0aa3684ef_large-group-of-a-happy-people-with-raised-hands-energetic-_1698-1131.jpeg",
    "https://wallpaperaccess.com/full/619976.jpg",
  ];

  List DocList=[
    "Batra",
    "Abhilekh Srivastav",
    "Lal Path"
    "Abrajit Ray",
    "B.Somaraju",
    "Sudhanshu Bhattacharya",
    "J.M.K.Murthy",
    "Amit Maydeo",
    "Ashok Seth",
    "Ambrish Mithal",
    "Bibaswan Ghosh"
  ];

    @override
    Widget build(BuildContext context) {


      return SafeArea (
        child: SingleChildScrollView (
          child: Stack (
            children: <Widget>[
              StackColumn1 ( ),

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  CarouselSlider.builder(
                      itemCount:5,
                      initialPage: 0,
                      aspectRatio: 16/9,
                      autoPlay: true,
                      enlargeCenterPage: true,

                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.deepOrange,
                              ],
                              begin: Alignment.topLeft,
                              end:Alignment.bottomRight,
                            )
                          ),
                          child: Image.network(imgList[index],
                          fit:BoxFit.fill,
                          ),
                        );
                      }
                  ),

                  SizedBox(
                    height: 50.0,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 500.0,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(35.0),
                        topRight: Radius.circular(35.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height:50.0,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0,left: 20.0),
                            child: Text("Available doctor's list :",style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ),),
                          ),
                        ),
                        Expanded(
                            child: ListView.builder(

                              itemCount: DocList.length,
                              itemBuilder: (BuildContext context,int index){
                                return ListTile(
                                  onTap: (){},
                                  contentPadding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                  ),
                                  title: Text(DocList[index].toString(),style: TextStyle(
                                    color: Colors.white
                                  ),),
                                  subtitle:Text("Physiotherapist",style: TextStyle(
                                      color: Colors.white
                                  ),),
                                  trailing: Icon(Icons.contacts,color: Colors.white,),
                                );
                              },
                            ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }
}