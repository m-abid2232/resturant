import 'package:flutter/material.dart';
import 'package:resturant/Pages/auth/login.dart';
import 'package:resturant/Pages/auth/singup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://vrdglipfvcfnkocvxraj.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZyZGdsaXBmdmNmbmtvY3Z4cmFqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI4NTU4NjAsImV4cCI6MjA2ODQzMTg2MH0.G0MeNyjTbuLZzlqH2GaZ1zVuPcDaxogkO2rPpKEWFKw',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
     home: Login(),
    );
  }
}
