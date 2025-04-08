import 'package:flutter/material.dart';
import 'package:pet_link/main_screen.dart';

class ResponseForm extends StatefulWidget {
  const ResponseForm({super.key});

  @override
  State<ResponseForm> createState() => _ResponseFormState();
}

class _ResponseFormState extends State<ResponseForm> {
  String _selectedOption = 'Casa propia';
  String _selectedOption2 = 'Si';
  String _selectedOption3 = 'Si';
  String _selectedOption4 = 'Dentro de casa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Formulario de Adopción',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Text(
              'Información del solicitante',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            const CustomTextField(
              label: "Nombre:",
              initialValue: "Amanda Gato",
            ),
            const CustomTextField(
              label: "Edad:",
              initialValue: "22 años",
            ),
            const CustomTextField(
              label: "Teléfono:",
              initialValue: "951 120 07 75",
            ),
            const CustomTextField(
              label: "Correo Eletrónico:",
              initialValue: "amanda@gmail.com",
            ),
            const CustomTextField(
              label: "Dirección completa:",
              initialValue: "Etla, etc. etc. etc.",
            ),
            const CustomTextField(
              label: "Ocupación:",
              initialValue: "Estudiante",
            ),
            const SizedBox(height: 15),
            const Divider(
                thickness: 2, color: Color.fromARGB(255, 114, 64, 253)),
            const SizedBox(height: 10),
            const Text(
              'Información sobre el hogar',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¿Dónde vives?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title:
                      const Text('Casa propia', style: TextStyle(fontSize: 15)),
                  value: 'Casa propia',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Casa rentada',
                      style: TextStyle(fontSize: 15)),
                  value: 'Casa rentada',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Departamento',
                      style: TextStyle(fontSize: 15)),
                  value: 'Departamento',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Otro', style: TextStyle(fontSize: 15)),
                  value: 'Otro',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¿Tu hogar tiene jardín?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Si', style: TextStyle(fontSize: 15)),
                  value: 'Si',
                  groupValue: _selectedOption2,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption2 = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('No', style: TextStyle(fontSize: 15)),
                  value: 'No',
                  groupValue: _selectedOption2,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption2 = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 35),
            const CustomTextField(
              label: "¿Cuántas personas viven en tu casa?",
              initialValue: "Muchas",
            ),
            const SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¿Hay niños en casa?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Si', style: TextStyle(fontSize: 15)),
                  value: 'Si',
                  groupValue: _selectedOption3,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption3 = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('No', style: TextStyle(fontSize: 15)),
                  value: 'No',
                  groupValue: _selectedOption3,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption3 = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 35),
            const CustomTextField(
              label: "Edades",
              initialValue: "12 y 8",
            ),
            const SizedBox(height: 30),
            const Divider(
                thickness: 2, color: Color.fromARGB(255, 114, 64, 253)),
            const SizedBox(height: 10),
            const Text(
              'Cuidados y responsabilidad',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¿Dónde dormirá la mascota?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Dentro de casa',
                      style: TextStyle(fontSize: 15)),
                  value: 'Dentro de casa',
                  groupValue: _selectedOption4,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption4 = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Patio/Jardín',
                      style: TextStyle(fontSize: 15)),
                  value: 'Patio/Jardín',
                  groupValue: _selectedOption4,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption4 = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Otro', style: TextStyle(fontSize: 15)),
                  value: 'Otro',
                  groupValue: _selectedOption4,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption4 = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 35),
            const CustomTextField(
                label: "¿Cuánto tiempo pasará sola la mascota?",
                initialValue: "2 horas"),
            const SizedBox(height: 15),
            const CustomTextField(
                label: "¿Con qué frecuencia saldrá a pasear?",
                initialValue: "Cada dos días"),
            const SizedBox(height: 45),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 114, 64, 253),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'Aceptar',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 20), 
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); 
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'Rechazar',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String initialValue;

  const CustomTextField({
    super.key,
    required this.label,
    this.initialValue = '',
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: initialValue);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontFamily: 'Poppins', fontSize: 15),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
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
