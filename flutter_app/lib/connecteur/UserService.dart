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
  final CollectionReference dbUsers = dbInstance.collection('user');

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
    if (querySnapshot.documents.length > 0) {
      DocumentSnapshot documentSnapshot = querySnapshot.documents.first;
      print(documentSnapshot);
      return User.fromFirestore(documentSnapshot);
    }

    print('N''existe pas');
    return null;
  }

  Future<void> addUser(Map<String, dynamic> map) =>
      dbUsers.document().setData(map);

  Future<void> deleteUser(String name) async {
    QuerySnapshot querySnapshot =
    await dbUsers.where('name', isEqualTo: name).getDocuments();
    await dbUsers.document(querySnapshot.documents.first.documentID).delete();
  }

  Future<User> getTestUser(String mail,String pass) async {
    QuerySnapshot querySnapshot =
    await dbUsers.where('email', isEqualTo: mail).where('passWord', isEqualTo: pass).getDocuments();
    if (querySnapshot.documents.length > 0) {
      print('Connexion successful !');
      DocumentSnapshot documentSnapshot = querySnapshot.documents.first;
      print(documentSnapshot.data);
      print(documentSnapshot.documentID);
      return User.fromFirestore(documentSnapshot);
    }
    print('Wrong email or password');
    return null;
  }

}