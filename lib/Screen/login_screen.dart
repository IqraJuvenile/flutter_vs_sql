import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  //const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // ✅ Define size here
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [cajapurpura(size), iconopersona(), loginForm(context)],
        ),
      ),
    );
  }

  Column loginForm(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 250),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text('Login', style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 30),
            ],
          ),
        ),
        const SizedBox(height: 50),
        const Text(
          'Please login',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  SafeArea iconopersona() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Icon(Icons.person_pin, color: Colors.white, size: 100),
      ),
    );
  }

  Container cajapurpura(Size size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(63, 63, 156, 1),
            Color.fromRGBO(90, 70, 178, 1),
          ],
        ),
      ),
      width: double.infinity,
      height: size.height * 0.4, // ✅ now defined
    );
  }
}
