import 'package:flutter/material.dart';

class SearchRoutesPage extends StatelessWidget {
  const SearchRoutesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco para el cuerpo
      appBar: AppBar(
        backgroundColor: Color(0xFF27AE60),
        elevation: 0,
        title: const Text('Buscar rutas'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  labelText: 'Buscar ruta',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFD5E8D4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            'Detalles de la ruta',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Punto ida', style: TextStyle(fontSize: 14, color: Colors.black)),
                          Text('Punto de salida', style: TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFD5E8D4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            'Horario',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Entra a las 6 am', style: TextStyle(fontSize: 14, color: Colors.black)),
                          Text('Sale a las 10 pm', style: TextStyle(fontSize: 14, color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xFFD5E8D4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Mapa de la ruta',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/map.png', // Ruta de tu imagen de mapa
                      height: 200,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Comentarios',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Una gran ruta\n\n'
                      'La ruta es muy rápida, me deja muy cerca del parque de la marimba. Se las recomiendo, donde la agarré fue en el poliforum.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
