import 'package:flutter/material.dart';

 class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  @override
  State<PantallaInicio> createState() => _PantallaInicio();
}

class _PantallaInicio extends State<PantallaInicio> {
  @override

  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Image.asset("assets/img/gym_logo.png",
                 width: ancho*0.4,
                 height: alto*0.4,),
                 const Text("Welcome", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'Lexend Deca'),),
                 const ElevatedButton(onPressed: null, child: Text('login'))  
          ],
          ),
        ),
        )

    );
  }
}