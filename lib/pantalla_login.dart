import 'package:flutter/material.dart';

 class PantallaLogin extends StatefulWidget {
  const PantallaLogin({super.key});

  @override
  State<PantallaLogin> createState() => _PantallaLogin();
}

class _PantallaLogin extends State<PantallaLogin> {
  @override

  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Stack(
        children: [
        
          SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img/gym_logo.png",
                 width: ancho*0.4,
                 height: alto*0.4,),
                const Text("Welcome", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'Lexend Deca',color: Colors.white),),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: const Color(0xFF4B0082)), 
                 child: const Text('email',style: TextStyle(color: Color(0xFF111717),fontWeight: FontWeight.bold),)),
                const SizedBox(height: 15),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: const Color(0xFF4B0082)), 
                 child: const Text('Contraseña',style: TextStyle(color: Color(0xFF111717),fontWeight: FontWeight.bold),)),
                const Text("Forgot Password ?",style: TextStyle(color: Color(0xFF4B0082),fontWeight: FontWeight.bold,fontSize: 10),),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: const Color(0xFF4B0082),elevation: 5) ,
                  child: const Text('Login my account', style :  TextStyle( fontWeight: FontWeight.bold, color: Color(0xFF111717)))),
                const SizedBox(height: 10),
                const Text("Or Login with",style: TextStyle(color: Color(0xFF4B0082),fontWeight: FontWeight.bold,fontSize: 10),),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: const Color(0xFF4B0082),elevation: 5) ,
                  child: const Text('Continue with Google', style :  TextStyle( fontWeight: FontWeight.bold, color: Color(0xFF111717)))),
                
                 

             ],
             
              ),
              
              
              
            ],
          ),
        ),
        
        ),
        const Align(  
                    alignment: Alignment.bottomCenter,
                      child:Text('Already have an account ? Sign Up',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF4B0082),fontSize: 15),)
              ),
        

        ],

      )

    );
  }
}
