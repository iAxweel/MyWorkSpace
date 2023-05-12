import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myworkspace/models/loginusermodel.dart';

class LoginService {

  LoginService() {
    Firebase.initializeApp();
  }

  LoginUserModel? _userModel;

  LoginUserModel? get loggedInUserModel => _userModel;

  Future<bool> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return false;
    }

    //Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;


    //Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    ) as GoogleAuthCredential;

    //Once signed in, retunr the UserCredential
    UserCredential userCreds = await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCreds != null) {
      _userModel = LoginUserModel(
          displayName: userCreds.user!.displayName,
          email: userCreds.user!.email,
          photoUrl: userCreds.user!.photoURL
      );
    }

    return true;
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    _userModel = null;
  }

}

