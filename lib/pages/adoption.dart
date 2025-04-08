import 'package:flutter/material.dart';
import 'package:pet_link/models/pet.dart';
import 'package:pet_link/pages/details_adoption.dart';
import 'package:pet_link/shared/app_bar.dart';

class Adoption extends StatefulWidget {
  const Adoption({super.key});

  @override
  State<Adoption> createState() => _AdoptionState();
}

class _AdoptionState extends State<Adoption> {
  static final List<Pet> allPets = List.generate(
    _petData.length,
    (index) => Pet(
      image: _petData[index]['image']!,
      category: _petData[index]['category']!,
      name: _petData[index]['name']!,
    ),
  );

  String selectedCategory = 'Todos';

  List<Pet> get filteredPets {
    if (selectedCategory == 'Todos') {
      return allPets;
    }
    return allPets.where((pet) => pet.category == selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: _categories.map((category) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedCategory == category
                            ? const Color.fromARGB(255, 114, 64, 253)
                            : Colors.grey[200],
                        foregroundColor: selectedCategory == category
                            ? Colors.white
                            : Colors.grey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        elevation: 0,
                      ),
                      child: Text(
                        category,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.85,
                ),
                itemCount: filteredPets.length,
                itemBuilder: (context, index) =>
                    PetCard(pet: filteredPets[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const List<Map<String, String>> _petData = [
  {'image': 'assets/images/roxy.png', 'category': 'Perros', 'name': 'Roxy'},
  {'image': 'assets/images/duke.png', 'category': 'Perros', 'name': 'Duke'},
  {
    'image': 'assets/images/charlie.png',
    'category': 'Perros',
    'name': 'Charlie'
  },
  {'image': 'assets/images/thor.png', 'category': 'Perros', 'name': 'Thor'},
  {'image': 'assets/images/benny.png', 'category': 'Perros', 'name': 'Benny'},
  {'image': 'assets/images/daisy.png', 'category': 'Perros', 'name': 'Daisy'},
  {
    'image': 'assets/images/gato.png',
    'category': 'Gatos',
    'name': 'Buddy',
  },
  {
    'image': 'assets/images/hamster.png',
    'category': 'Roedores',
    'name': 'Coco',
  },
];

const List<String> _categories = [
  'Todos',
  'Perros',
  'Gatos',
  'Roedores',
  'Reptiles'
];

class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              pet.image,
              fit: BoxFit.scaleDown,
              height: 120,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pet.category,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    Text(
                      pet.name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailAdoption(pet: pet),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 253, 128, 135),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    minimumSize: const Size(50, 30),
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  child: const Text('Ver Más',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
