import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KkprBmsFirebaseUser {
  KkprBmsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KkprBmsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KkprBmsFirebaseUser> kkprBmsFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<KkprBmsFirebaseUser>(
        (user) => currentUser = KkprBmsFirebaseUser(user));
