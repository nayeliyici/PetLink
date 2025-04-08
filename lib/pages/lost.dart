import 'package:flutter/material.dart';
import 'package:pet_link/pages/formulariolost.dart';
import 'package:pet_link/pages/vermaslost.dart';
import 'package:pet_link/shared/app_bar.dart';

class Lost extends StatefulWidget {
  const Lost({super.key});

  @override
  State<Lost> createState() => _LostState();
}

class _LostState extends State<Lost> {
  String selectedFilter = "Reptiles";

  final List<Map<String, String>> dogs = [
    {
      "nombre": "Firulais",
      "edad": "2 años",
      "color": "Café claro",
      "ultimaVez": "Parque Central",
      "senas": "Tiene una mancha blanca en el lomo",
      "imagen": "assets/images/duke.png"
    },
  ];

  final List<Map<String, String>> cats = [
    {
      "nombre": "Michi",
      "edad": "4 años",
      "color": "Naranja",
      "ultimaVez": "Colonia Roma",
      "senas": "Cola doblada al final",
      "imagen": "assets/images/gato.png"
    },
  ];

  final List<Map<String, String>> reptiles = [
    {
      "nombre": "Leopardo",
      "edad": "3 años",
      "color": "Amarillo con manchas negras",
      "ultimaVez": "Calle Hidalgo",
      "senas": "Tiene una pequeña cicatriz en la cola",
      "imagen": "assets/images/leopardo.png"
    },
    {
      "nombre": "Bola",
      "edad": "5 años",
      "color": "Marrón con patrones dorados",
      "ultimaVez": "Calzada Madero",
      "senas": "Tiene un anillo blanco en la cola",
      "imagen": "assets/images/bola.png"
    },
    {
      "nombre": "Uga",
      "edad": "1 año",
      "color": "Verde oscuro con líneas amarillas",
      "ultimaVez": "La experimental",
      "senas": "Caparazón con una grieta pequeña en la parte trasera",
      "imagen": "assets/images/uga.png"
    },
  ];

  List<Map<String, String>> getFilteredPets() {
    if (selectedFilter == "Todos") {
      return [...dogs, ...cats, ...reptiles];
    } else if (selectedFilter == "Perros") {
      return dogs;
    } else if (selectedFilter == "Gatos") {
      return cats;
    } else if (selectedFilter == "Reptiles") {
      return reptiles;
    } else if (selectedFilter == "MisMascotas") {
      return reptiles.where((pet) => pet["nombre"] == "Uga").toList();
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FormularioExtravio(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 109, 109),
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
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      FilterButton(
                        text: "Todos",
                        isSelected: selectedFilter == "Todos",
                        onTap: () => setState(() => selectedFilter = "Todos"),
                      ),
                      FilterButton(
                        text: "Perros",
                        isSelected: selectedFilter == "Perros",
                        onTap: () => setState(() => selectedFilter = "Perros"),
                      ),
                      FilterButton(
                        text: "Gatos",
                        isSelected: selectedFilter == "Gatos",
                        onTap: () => setState(() => selectedFilter = "Gatos"),
                      ),
                      FilterButton(
                        text: "Reptiles",
                        isSelected: selectedFilter == "Reptiles",
                        onTap: () =>
                            setState(() => selectedFilter = "Reptiles"),
                      ),
                      FilterButton(
                        text: "Mis mascotas",
                        isSelected: selectedFilter == "MisMascotas",
                        onTap: () =>
                            setState(() => selectedFilter = "MisMascotas"),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: getFilteredPets().length,
                  itemBuilder: (context, index) {
                    final pet = getFilteredPets()[index];
                    return ReptilCard(data: pet);
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
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 119, 105, 249)
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class ReptilCard extends StatelessWidget {
  final Map<String, String> data;

  const ReptilCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(data["imagen"]!, height: 100),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerMasLost(data: data),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 109, 109),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(horizontal: 75),
                    ),
                    child: const Text(
                      "Ver más",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
