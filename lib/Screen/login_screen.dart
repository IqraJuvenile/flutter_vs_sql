//import 'package:flutter_vs_sql/widgets/input_decoration.dart';
import 'package:flutter/material.dart';

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
              Container(
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        autocorrect: false,
                        decoration: 
                      //     enabledBorder: UnderlineInputBorder(
                      //       borderSide: BorderSide(color: Colors.deepPurple),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: Colors.deepPurple,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     hintText: 'example@gmail.com',
                      //     labelText: 'coreection email',
                      //     prefixIcon: Icon(Icons.alternate_email),
                      //   ),
                      // ),
                      SizedBox(height: 30),
                      TextFormField(
                        autocorrect: false,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                          ),
                          hintText: '************',
                          labelText: 'coreection Password',
                          prefixIcon: Icon(Icons.lock_outline),
                        ),
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
