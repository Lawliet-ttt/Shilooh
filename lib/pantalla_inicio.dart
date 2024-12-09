import 'package:flutter/material.dart';
import 'package:shilooh/pantalla_calculadora.dart';
import 'package:shilooh/pantalla_login.dart';
import 'package:shilooh/pantalla_macros.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
             Padding(padding: EdgeInsets.symmetric(vertical: alto*0.03)
             ),
                  InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>  const PantallaCalculadoraGrasa()),
                  );
                },
                child: Container(
                  width: ancho * 0.25,
                    height: alto * 0.20,
                    color: Colors.blue,
                ),
                
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: alto*0.03)
             ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>  const PantallaLogin()),
                  );
                },
                  child: Container(
                     width: ancho * 0.25,
                    height: alto * 0.20,
                    color: Colors.yellow,
                  ),
                  
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: alto*0.03)
             ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>  const PantallaMacros()),
                  );
                },
                  child: Container(
                     width: ancho * 0.25,
                    height: alto * 0.20,
                    color: Colors.green,
                  ),
                  
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: alto*0.03)
             ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>  const PantallaMacros()),
                  );
                },
                  child: Container(
                     width: ancho * 0.25,
                    height: alto * 0.20,
                    color: Colors.pink,
                  ),
                  
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: alto*0.03)
             ),

                ]
              ),
            
        )
      )
    );
  }
}