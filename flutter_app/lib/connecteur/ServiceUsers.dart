import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutterapp/connecteur/Users.dart';

class UserService {

  // Instances
  final FirebaseAuth authInstance = FirebaseAuth.instance;
  static final Firestore dbInstance = Firestore.instance;
  static final StorageReference storageInstance = FirebaseStorage.instance.ref();


  // Collections
  final CollectionReference dbUsers = dbInstance.collection('USERS');

  Future<List<User>> getAllUsers() async {
    QuerySnapshot querySnapshot = await dbUsers.getDocuments();
    List<DocumentSnapshot> docs = querySnapshot.documents;
    List<User> users = [];
    docs.forEach((doc) {
      users.add(User.fromFirestore(doc));
    });
    return users;
  }

  Future<User> getUser(String name,String thisIs) async {
    QuerySnapshot querySnapshot =
    await dbUsers.where(thisIs, isEqualTo: name).getDocuments();
    DocumentSnapshot documentSnapshot = querySnapshot.documents.first;
    return User.fromFirestore(documentSnapshot);
  }

  Future<void> addUser(Map<String, dynamic> map) =>
      dbUsers.document().setData(map);

  Future<void> deleteUser(String name) async {
    QuerySnapshot querySnapshot =
    await dbUsers.where('name', isEqualTo: name).getDocuments();
    await dbUsers.document(querySnapshot.documents.first.documentID).delete();
  }

}