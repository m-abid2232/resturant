import 'package:flutter/material.dart';
import 'package:resturant/Pages/auth/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServise {

  final suabase = Supabase.instance.client;

  Future <String?> Singup(String email, String password) async {
    try {
      final response = await suabase.auth.signUp(
        email: email,
        password: password,
      );
      if (response.user != null) {
        return null;
      }
      return "A unknow error occured";
    } on AuthException catch (e) {
      return e.message;
    } catch (e) {
      return "Error: $e";
    }
  }

  // Now for login method 
  Future <String?> login(String email, String password) async {
    try {
      final response = await suabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (response.user != null) {
        return null;
      }
      return "invalid email or password";
    } on AuthException catch (e) {
      return e.message;
    } catch (e) {
      return "Error: $e";
    }
  }

  // Now for logout method
  Future <String?> Logout(BuildContext context) async {
    try {
      await suabase.auth.signOut();
      if (!context.mounted) return null;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
      return null;
    } catch (e) {
      print("Error: $e");
      return "Error: $e";
    }
  }
}