//-- import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vs_sql/widgets/input_decoration.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // ✅ Define size here
    return Scaffold(
      body: SizedBox(
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
          //height: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(50),
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
              Container(
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: InputDecorations.inputDecoration(
                          hintext: 'example@gmail.com',
                          labeltext: 'Type email',
                          icono: Icon(Icons.alternate_email_rounded),
                        ),
                        validator: (value) {
                          String pattern =
                              r'^(?:(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,}|[\w\.-]+@([\w-]+\.)+[\w-]{2,4}|[A-Za-z ]{2,})$';

                          RegExp regExp = RegExp(pattern);
                          return regExp.hasMatch(value ?? '')
                              ? null
                              : 'Plesae email correction';
                        },
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        autocorrect: false,
                        decoration: InputDecorations.inputDecoration(
                          hintext: '************',
                          labeltext: 'Type Password',
                          icono: Icon(Icons.lock_outline),
                        ),
                        validator: (value) {
                          return (value != null && value.length >= 6)
                              ? null
                              : 'Please do correct';
                        },
                      ),
                      SizedBox(height: 30),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledColor: Colors.grey,
                        color: Colors.deepPurple,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 60,
                            vertical: 15,
                          ),
                          child: Text(
                            'SignIn',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'home');
                        },
                      ),
                    ],
                  ),
                ),
              ),
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
      child: Stack(
        children: [
          Positioned(top: 90, left: 30, child: burbuja()),
          Positioned(top: -40, left: -30, child: burbuja()),
          Positioned(top: -50, right: -20, child: burbuja()),
          Positioned(bottom: -50, left: 10, child: burbuja()),
          Positioned(bottom: 120, right: 20, child: burbuja()),
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
