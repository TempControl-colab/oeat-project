import 'package:cloud_firestore/cloud_firestore.dart';

class User {

  String email;
  String name;
  String passWord;
  String adress;
  int floor;
  int code;
  int zipCode;
  String cityName;
  int door;
  bool hasElevator;
  bool hasPet;


  User(
      String email,
      String name,
      String passWord,
      String adress,
      int floor,
      int code,
      int zipCode,
      String cityName,
      int door,
      bool hasElevator,
      bool hasPet){

    this.email=email;
    this.name=name;
    this.passWord=passWord;
    this.adress=adress;
    this.floor=floor;
    this.code=code;
    this.zipCode=zipCode;
    this.cityName=cityName;
    this.door=door;
    this.hasElevator=hasElevator;
    this.hasPet=hasPet;
  }




  User.fromFirestore(DocumentSnapshot documentSnapshot) {
    Map<String, dynamic> m = documentSnapshot.data;
    email = m['email'];
    name = m['name'];
    passWord = m['passWord'];
    adress = m['adress'];
    floor = m['floor'];
    code = m['code'];
    zipCode = m['zipCode'];
    cityName = m['cityName'];
    door = m['door'];
    hasElevator = m['hasElevator'];
    hasPet = m['hasPet'];

  }


  toMap() {
    return <String, dynamic>{
      'email' : email,
      'name' : name,
      'passWord': passWord,
      'adress': adress,
      'floor': floor,
      'code': code,
      'zipCode': zipCode,
      'cityName': cityName,
      'door': door,
      'hasElevator': hasElevator,
      'hasPet': hasPet,
    };
  }
}