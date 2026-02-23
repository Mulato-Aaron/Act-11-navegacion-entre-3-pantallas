import 'package:flutter/material.dart';
// --- PÁGINA 2 ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Página", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                // Removed the invalid `placeholder` argument from Image.network
                child: Image.network(
                  'https://picsum.photos/300/200',
                  height: 200,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/tercera'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade200),
                child: const Text("Ir a la Tercera Página"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Volver"),
              )
            ],
          ),
        ),
      ),
    );
  }
}