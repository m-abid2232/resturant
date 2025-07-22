import 'package:flutter/material.dart';
import 'package:resturant/Pages/auth/login.dart';
import 'package:resturant/Pages/auth/service/auth_servise.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final AuthServise _authServise = AuthServise();
  bool isLoading = false;

  void _signup() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter your name")),
      );
      return;
    }
    if (!email.contains("@") || !email.contains(".com")) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter a valid email address")),
      );
      return;
    }
    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password must be at least 6 characters")),
      );
      return;
    }
    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Passwords do not match")),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    final result = await _authServise.Singup(email, password);

    setState(() {
      isLoading = false;
    });

    if (result == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Signup successful!")),
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Signup failed: $result")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("WelCome"))),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                style: TextStyle(fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "User Name Here ",
                  hintText: "Ali Khan",
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.grey[200],
                  labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
                style: TextStyle(fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "Enter Email here",
                  hintText: "example@email.com",
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.grey[200],
                  labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.grey,
                  labelStyle: TextStyle(color: Colors.deepPurple),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Re-enter your password",
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.grey,
                  labelStyle: TextStyle(color: Colors.deepPurple),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _signup,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.deepPurple,
                      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    child: Text("Login"),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text("Condition and Privacy Policy"),
            ],
          ),
        ),
      ),
    );
  }
}
