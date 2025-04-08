import 'package:flutter/material.dart';
import 'package:pet_link/models/pet.dart';
import 'package:pet_link/pages/form_adoption.dart';
import 'package:pet_link/pages/response_form.dart';

class DetailAdoption extends StatelessWidget {
  final Pet pet;

  const DetailAdoption({super.key, required this.pet});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pet.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.scaleDown,
            ),
            Text(
              pet.name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Nombre: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black87),
                  ),
                  TextSpan(
                    text: pet.name,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Edad: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: '2 años',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Raza: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: 'Mestizo',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Color: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: 'Negro con tonos cafés',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Tamaño: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: 'Mediano (aprox. 18 kg)',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Estado de salud: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: 'Vacunas al día, desparasitado y esterilizado',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Personalidad: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text:
                          'Juguetón, cariñoso y muy leal. Le encanta correr en el parque y jugar con otros perros. Se lleva bien con niños y personas mayores.',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Condiciones ideales: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text:
                          'Necesita una familia activa, con espacio para jugar. Se adapta bien a casas con jardín o departamentos con paseos diarios.',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Ubicación: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: 'Disponible para adopción en Ocotlán',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            Text.rich(
              const TextSpan(
                children: [
                  TextSpan(
                      text: 'Contacto: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87)),
                  TextSpan(
                      text: '951 359 25 20',
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (pet.name == "Charlie") ...[
              const Divider(thickness: 2, color: Colors.deepPurpleAccent),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Solicitudes",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CommentTile(
                name: "Amanda",
                message: "Solicitó adopción de Charlie",
                avatar: "assets/images/Amanda.png",
                hasMessage: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResponseForm()),
                  );
                },
              ),
              CommentTile(
                name: "Fabi",
                message: "Solicitó adopción de Charlie",
                avatar: "assets/images/Fabi.png",
                hasMessage: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResponseForm()),
                  );
                },
              ),
            ],
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class CommentTile extends StatelessWidget {
  final String name;
  final String message;
  final String avatar;
  final bool hasMessage;
  final VoidCallback? onTap;

  const CommentTile({
    super.key,
    required this.name,
    required this.message,
    required this.avatar,
    required this.hasMessage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
      title: Text(
        name,
        style:
            const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        message,
        style: const TextStyle(fontFamily: 'Poppins'),
      ),
      trailing: GestureDetector(
        onTap: onTap,
        child: Icon(
          hasMessage ? Icons.arrow_forward_ios_rounded : Icons.call,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
