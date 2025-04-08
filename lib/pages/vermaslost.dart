import 'package:flutter/material.dart';

class VerMasLost extends StatelessWidget {
  final Map<String, String> data;

  const VerMasLost({super.key, required this.data});

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
      resizeToAvoidBottomInset: true, 
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(data["imagen"]!, height: 120),
              const SizedBox(height: 10),
              Text(
                data["nombre"]!,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              _buildInfo("Edad", data["edad"]!),
              _buildInfo("Género", "Macho"),
              _buildInfo("Color", data["color"]!),
              _buildInfo("Última vez visto en", data["ultimaVez"]!),
              _buildInfo("Fecha de desaparición", "06 de marzo"),
              _buildInfo("Señas particulares", data["senas"]!),
              _buildInfo("Contacto", "9512263315"),
              const Divider(thickness: 2, color: Colors.deepPurpleAccent),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Comentarios",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CommentTile(
                  name: "Brayan",
                  message: "Acabo de ver una tortuga similar en Ocotlán",
                  avatar: "assets/images/Brayan.png",
                  hasMessage: true),
              const CommentTile(
                name: "Amanda",
                message: "Benito se comió una, ¿puede ser la tuya?",
                avatar: "assets/images/Amanda.png",
                hasMessage: true,
              ),
              const CommentTile(
                name: "Fabi",
                message: "¿Hay recompensa?",
                avatar: "assets/images/Fabi.png",
                hasMessage: true,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Agrega un comentario...",
                  hintStyle: const TextStyle(fontFamily: 'Poppins'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.deepPurple),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send, color: Colors.deepPurple),
                    onPressed: () {},
                  ),
                ),
              ),
              if (data["nombre"] == "Uga") ...[
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Mascota marcada como encontrada')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 114, 64, 253),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: const Text(
                    "Encontre a mi mascota",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: TextSpan(
            text: "$title: ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            children: [
              TextSpan(
                text: value,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
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

  const CommentTile({
    super.key,
    required this.name,
    required this.message,
    required this.avatar,
    required this.hasMessage,
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
      trailing: hasMessage
          ? const Icon(Icons.message, color: Colors.deepPurple)
          : const Icon(Icons.call, color: Colors.deepPurple),
    );
  }
}
