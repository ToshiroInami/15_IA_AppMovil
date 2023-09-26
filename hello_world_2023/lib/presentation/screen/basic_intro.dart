import 'package:flutter/material.dart';

class BasicIntro extends StatelessWidget {
  const BasicIntro({Key? key}) : super(key: key);

  // Función para manejar la navegación cuando se presiona el botón
  void _navigateToOtraPantalla(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const NuevaPantalla(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDE8CD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'INSTITUTO',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              'VALLE GRANDE',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Perfeccionamos tu talento',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                // Llama a la función de navegación cuando se presiona el botón
                _navigateToOtraPantalla(context);
              },
              color: Colors.blueAccent,
              padding: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Text(
                'Empieza Ahora',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*Crear nueva pantalla*/
class NuevaPantalla extends StatelessWidget {
  const NuevaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esta es la nueva pantalla'),
      ),
      body: const Center(
        child: Text('¡Informacion sobre la nueva pantalla!'),
      ),
    );
  }
}
