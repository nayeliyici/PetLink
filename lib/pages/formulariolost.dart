import 'package:flutter/material.dart';
import 'package:pet_link/main_screen.dart';

class FormularioExtravio extends StatelessWidget {
  const FormularioExtravio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                "Formulario de extravío",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color.fromARGB(255, 220, 220, 220),
                child: IconButton(
                  icon: const Icon(Icons.photo_camera,
                      size: 30, color: Colors.black87),
                  onPressed: () {
                  },
                ),
              ),
              const SizedBox(height: 20),
              const CustomTextField(label: "Nombre de la mascota:"),
              const CustomTextField(label: "Edad:"),
              const CustomTextField(label: "Género:"),
              const CustomTextField(label: "Color:"),
              const CustomTextField(label: "Última vez visto en:"),
              const CustomTextField(label: "Fecha de desaparición:"),
              const CustomTextField(label: "Señas particulares:"),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 119, 105, 249),
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'Publicar',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;

  const CustomTextField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 15),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
