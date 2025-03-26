import 'package:flutter/material.dart';
import 'package:pet_link/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_validateForm);
    _lastNameController.addListener(_validateForm);
    _emailController.addListener(_validateForm);
    _passwordController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateForm() {
    setState(() {
      _isButtonEnabled = _nameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nombre(s)',
                  labelStyle: const TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 114, 64, 253),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Apellidos',
                  labelStyle: const TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 114, 64, 253),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 114, 64, 253),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: const TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 114, 64, 253),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                ),
              ),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('¿Ya tienes cuenta? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
                    'Inicia Sesión',
                    style: TextStyle(
                      color: Color.fromARGB(255, 114, 64, 253),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 18),
                backgroundColor: const Color.fromARGB(255, 114, 64, 253),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Registrarse',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
