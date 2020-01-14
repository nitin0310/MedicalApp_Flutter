

import 'package:flutter/cupertino.dart';
import 'package:medical_app/Details.dart';

class AppointList with ChangeNotifier{
  List<Details> applist = [
    Details("Nitin", "19"),
    Details("Abhishek", "22"),
    Details("Arun", "25"),
    Details("Nitya", "18"),
  ];

  void addItemToList(Details details){
    applist.add(Details(details.name, details.age));
    notifyListeners();
  }
}