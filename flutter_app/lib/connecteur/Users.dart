import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String passWord;
  String name;
  String email;
  String firstName;
  int numberLocation;
  String streetLocation;
  String cityLocation;
  int numberCityLocation;


  User(
      String id,
      String passWord,
      String name,
      String email,
      String firstName,
      int numberLocation,
      String streetLocation,
      String cityLocation,
      int numberCityLocation){

    this.id=id;
    this.passWord=passWord;
    this.name=name;
    this.email=email;
    this.firstName=firstName;
    this.numberLocation=numberLocation;
    this.streetLocation=streetLocation;
    this.cityLocation=cityLocation;
    this.numberCityLocation=numberCityLocation;
  }




  User.fromFirestore(DocumentSnapshot documentSnapshot) {
    Map<String, dynamic> m = documentSnapshot.data;
    id = m['id'];
    passWord = m['passWord'];
    name = m['name'];
    email = m['email'];
    firstName = m['firstName'];
    numberLocation = m['numberLocation'];
    streetLocation = m['streetLocation'];
    cityLocation = m['cityLocation'];
    numberCityLocation = m['numberCityLocation'];

  }


  toMap() {
    return <String, dynamic>{
      'id': id,
      'passWord': passWord,
      'name' : name,
      'email' : email,
      'firstName' : firstName,
      'numberLocation' : numberLocation,
      'streetLocation' : streetLocation,
      'cityLocation' : cityLocation,
      'numberCityLocation' : numberCityLocation
    };
  }
}