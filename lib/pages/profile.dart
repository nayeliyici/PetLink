import 'package:flutter/material.dart';
import 'package:pet_link/main_screen.dart';
import 'package:pet_link/shared/app_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/Nayeli.png'), 
                    backgroundColor: Color.fromARGB(255, 220, 220, 220),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.edit_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Nayeli",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            CustomTextField(label: "Nombre", placeholcer: "Nayeli"),
            CustomTextField(label: "Email", placeholcer: "nayeli@gmail.com"),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
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
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                ),
                child: Text(
                  'Guardar',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String placeholcer;

  const CustomTextField({super.key, required this.label, required this.placeholcer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 17),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            hintText: placeholcer,
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
