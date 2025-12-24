import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/model/auth/create_user_req.dart';

abstract class AutFirebaseService {
  Future<Either> signup(CreateUserReq createUserReq);

  Future<void> signin();
}

class AuthFirebaseServiceImpl extends AutFirebaseService {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
      return Right("Signup wa successfull");
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = "The password provided is too weak";
      } else if (e.code == 'email-already-in-use') {
        message = 'Accoutn already exist with that email';
      }
      return Left(message);
    }
  }
}
