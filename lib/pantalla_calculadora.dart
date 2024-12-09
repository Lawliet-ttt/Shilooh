import 'package:flutter/material.dart';

class PantallaCalculadoraGrasa extends StatefulWidget {
  const PantallaCalculadoraGrasa({super.key});

  @override
  State<PantallaCalculadoraGrasa> createState() => _PantallaCalculadoraGrasa();
}

class _PantallaCalculadoraGrasa extends State<PantallaCalculadoraGrasa> {
  

  final _weightController = TextEditingController();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();

  List<String> list = <String> ['Hombre','Mujer'];

  final List<DropdownMenuEntry<String>> dropdownMenuEntries = [
    const DropdownMenuEntry(value: 'Hombre', label: 'Hombre'),
    const DropdownMenuEntry(value: 'Mujer', label: 'Mujer')
  ];

  String _genero = "Hombre";
  double? _resultado;
  double? _imc;

  void _calcularGrasa(){
    String pesoText = _weightController.text;
    String edadText = _ageController.text;
    String alturaText = _heightController.text;

    if ( pesoText.isEmpty || edadText.isEmpty || alturaText.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Por favor, completa todos los campos"))
        );
      return;

    }

    double peso = double.tryParse(pesoText) ?? 0;
    double edad = double.tryParse(edadText) ?? 0;
    double altura = double.tryParse(alturaText) ?? 0;

    if(peso <= 1 || peso >= 350){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Ingresar un peso valido"))
        );
        return;
    }

    if (edad <= 1 || edad >= 150) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Ingresar una edad valida"))
      );
      return;
    }
    

    if (altura <= 54 || altura >= 273) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Ingresar una altura valida"))
        );
        return;
    }
    
    double alturaEnMetros = altura/100;
    double grasaCorporal;

    double indice = peso/(alturaEnMetros*alturaEnMetros);

    if (_genero == 'Hombre') {
      grasaCorporal = (1.20 * indice) + (0.23 * edad) - 16.2;
    } else { 
      grasaCorporal = (1.20 * indice) + (0.23 * edad) - 5.4;
    }

    setState(() {
      _resultado = grasaCorporal;
    });

    setState(() {
      _imc =indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;

    return   Scaffold(
        body: SingleChildScrollView(
          child : Center(
            child: Column(
              
            mainAxisAlignment: MainAxisAlignment.center,
            

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.all(alto*0.03)
             ),
             const Text("Calculadora",
             style: TextStyle(
              color: Color(0xFF4B0082),
              fontWeight: FontWeight.bold,
              fontSize: 20
              ),
              ),
                Padding(padding: EdgeInsets.all(alto*0.03)
             ),
              ],
            ),
             
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                
                SizedBox(
                width: ancho*0.4,
                height: alto*0.2,
                child: TextField(
                controller: _weightController,
                decoration:   InputDecoration(
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Color(0xFF4B0082),
                  width: 2.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF4B0082),
                    width: 2.5
                  ),
                ),
                labelText: "Peso (kg)",
                labelStyle:  const TextStyle(
                color: Color(0xFF4B0082), 
                fontSize: 15,
                fontWeight: FontWeight.bold
                ),
                ),
                keyboardType: TextInputType.number,
                style:  const TextStyle(
                  color: Color(0xFF4B0082)),
              ),
            ),


            //EDAD
               SizedBox(
                width: ancho*0.4,
                height: alto*0.2,
                child: TextField(
                controller: _ageController,
                decoration:   InputDecoration(
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Color(0xFF4B0082),
                  width: 2.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF4B0082),
                    width: 2.5
                  ),
                ),
                
                labelText: "Edad",
                labelStyle: const TextStyle(
                  color: Color(0xFF4B0082),
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                )
                ),
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Color(0xFF4B0082)),
              ),
            ),


            ],

            ),
            const SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                SizedBox(
                width: ancho*0.4,
                height: alto*0.2,
                child: TextField(
                controller: _heightController,
                decoration:   InputDecoration(
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Color(0xFF4B0082),
                  width: 2.5
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xFF4B0082),
                    width: 2.5
                  ),
                ),
                labelText: "Altura",
                labelStyle: const TextStyle(
                  color: Color(0xFF4B0082),
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                )
                ),
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Color(0xFF4B0082)),
              ),
            ),

            SizedBox(
              width: ancho*0.4,
                height: alto*0.2,
                child : Column(
                  children: [
              SizedBox(
                
                width: ancho*0.4,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF4B0082),
                        width: 2.5
                        ),
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                      child: DropdownButton<String>(
                        value: _genero,
                        
                        items: list.map((String genero) {
                          return DropdownMenuItem<String>(
                            value: genero,
                            child: Text(genero,
                            style: const TextStyle(color: Color(0xFF4B0082),
                            fontWeight: FontWeight.bold),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _genero = newValue!;
                          });
                        },
                        //0xFF111717
                        style: const TextStyle(color: Color(0xFF111717)),
                        iconEnabledColor: const Color(0xFF4B0082),
                        dropdownColor: const Color(0xFF111717),
                        underline: Container(),
                        borderRadius: BorderRadius.circular(20),
                        padding:  EdgeInsets.symmetric(horizontal: ancho*0.025),
                      
                      
                   ),
                ),
              ),
            ],
                )
            ),
              ]
                ),
              ElevatedButton(
                onPressed: _calcularGrasa,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4B0082),
                  foregroundColor: const Color(0xFF111717),
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                  minimumSize: Size(ancho*0.14, alto*0.09),
                  
                ), 
                child: const Text("Calcular"),
                ),
                SizedBox(height: alto*0.05),
                Column(
                  children: [
                    if (_resultado != null && (_resultado! <= 1 || _resultado! >= 70))
                const Text(
                "El cálculo no es realista, verifica tus datos.",
                style: TextStyle(color: Color(0xFF4B0082),
                fontWeight: FontWeight.bold
                ),
                ),
                if (_resultado != null && _resultado! > 1 && _resultado! < 70)
                Text(
                "Tu porcentaje de grasa es ${_resultado!.toStringAsFixed(1)}% y tu IMC es ${_imc!.toStringAsFixed(1)}",
                style: const TextStyle(color: Color(0xFF4B0082),
                fontWeight: FontWeight.bold),
                ),
                  ],
                )
          
          ],
          
                 
            
       
        ),
          )
        
        ),
              );
        
  }
}