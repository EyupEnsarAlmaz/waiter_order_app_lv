import 'package:firebase_auth/firebase_auth.dart';
import 'package:waiter_order_app_lv/features/auth/view/login/model/login_model.dart';
import 'package:waiter_order_app_lv/features/auth/view/register/model/register_model.dart';

class AuthDataSource {
  AuthDataSource._();
  static final shared = AuthDataSource._();
  final _firebaseAuth = FirebaseAuth.instance;

  Future<User?> login({required LoginModel loginModel}) async {
    if (_firebaseAuth.currentUser != null) {
      return _firebaseAuth.currentUser;
    } else {
      UserCredential authCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: loginModel.email,
        password: loginModel.password,
      );
      return authCredential.user;
    }
  }

  Future<User?> register({required RegisterModel registerModel}) async {
    UserCredential authCredential =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: registerModel.email,
      password: registerModel.password,
    );

    return authCredential.user;
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<User?> getUser() async {
    return await _firebaseAuth.currentUser;
  }
}
