import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        title: const Text(
          'Notificaciones',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/Brayan.png'),
              ),
              title: Text('Brayan'),
              subtitle: Text('Comentó tu publicación'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/Amanda.png'),
              ),
              title: Text('Amanda'),
              subtitle: Text('Parece que encontro a tu mascota!'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/Fabi.png'),
              ),
              title: Text('Fabi'),
              subtitle: Text('Comentó tu publicación'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/knino.png'),
              ),
              title: Text('Veterinaria Knino'),
              subtitle: Text('Aprobó tu adopción'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
