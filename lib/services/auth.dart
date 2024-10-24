import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  /// Sign in with Google account
  Future<User?> signInGoogle() async {
    try {
      // Trigger the Google sign-in flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // User canceled the sign-in
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with the credential
      final UserCredential result =
          await _firebaseAuth.signInWithCredential(credential);
      final User? user = result.user;

      return user;
    } catch (e) {
      // Handle errors here
      _handleSignInError(e);
      return null;
    }
  }

  /// Handle sign-in errors
  void _handleSignInError(Object error) {
    // For now, we'll just print the error, but you can log it or show a user-friendly message
    print('Error during Google Sign-In: $error');
    // Optionally, use a logging package or error reporting tool here
  }
}
