import 'package:flutter/material.dart';
import 'login_page.dart'; // Importa la página de login

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco para el cuerpo
      appBar: AppBar(
        backgroundColor: Color(0xFF27AE60),
        elevation: 0,
        title: const Text('Crear Cuenta'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 40), // Ajusta el espacio superior
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre completo',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo electronico',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Crear contraseña',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirmar contraseña',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 40), // Ajusta el espacio entre los campos y el botón
              ElevatedButton(
                onPressed: () {
                  // Navega a la página de login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF27AE60), // Color de fondo del botón verde
                  foregroundColor: Colors.white, // Color del texto del botón blanco
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Ajusta el padding del botón
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Botón más redondeado
                  ),
                ),
                child: const Text('Crear cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
