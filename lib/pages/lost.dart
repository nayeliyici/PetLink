import 'package:flutter/material.dart';

class Lost extends StatelessWidget {
  const Lost({super.key});

  static final List<Map<String, String>> reptiles = [
    {
      "nombre": "Leopardo",
      "edad": "3 años",
      "color": "Amarillo con manchas negras",
      "ultimaVez": "Calle Hidalgo",
      "senas": "Tiene una pequeña cicatriz en la cola",
      "imagen": "../assets/images/leopardo.png"
    },
    {
      "nombre": "Bola",
      "edad": "5 años",
      "color": "Marrón con patrones dorados",
      "ultimaVez": "Calzada Madero",
      "senas": "Tiene un anillo blanco en la cola",
      "imagen": "../assets/images/bola.png"
    },
    {
      "nombre": "Uga",
      "edad": "1 año",
      "color": "Verde oscuro con líneas amarillas",
      "ultimaVez": "La experimental",
      "senas": "Caparazón con una grieta pequeña en la parte trasera",
      "imagen": "../assets/images/uga.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('../assets/images/petLink.png', height: 50),
                  const Icon(Icons.notifications_none, size: 30),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Hola Nayeli",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "¡Perdí a mi Compañero!",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FilterButton(text: "Todos"),
                  FilterButton(text: "Perros"),
                  FilterButton(text: "Gatos"),
                  FilterButton(text: "Reptiles", isActive: true),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: reptiles.length,
                  itemBuilder: (context, index) {
                    return ReptilCard(data: reptiles[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;
  final bool isActive;

  const FilterButton({required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: isActive ? Colors.deepPurple : Colors.grey[200],
      label: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}

class ReptilCard extends StatelessWidget {
  final Map<String, String> data;

  const ReptilCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(data["imagen"]!, height: 80),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["nombre"]!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text("Edad: ${data["edad"]}",
                      style: const TextStyle(fontFamily: 'Poppins')),
                  Text("Color: ${data["color"]}",
                      style: const TextStyle(fontFamily: 'Poppins')),
                  Text("Última vez visto en: ${data["ultimaVez"]}",
                      style: const TextStyle(fontFamily: 'Poppins')),
                  Text("Señas particulares: ${data["senas"]}",
                      style: const TextStyle(fontFamily: 'Poppins')),
                  const SizedBox(height: 6),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text(
                      "Ver más",
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
