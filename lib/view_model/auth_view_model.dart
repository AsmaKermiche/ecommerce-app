import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthViewModel extends GetxController{
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  void GoogleSignInMethod() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
   final AuthCredential credential=  GoogleAuthProvider.credential(
     idToken:googleSignInAuthentication.idToken,
     accessToken: googleSignInAuthentication.accessToken
   );
  await _firebaseAuth.signInWithCredential(credential);
  }

}