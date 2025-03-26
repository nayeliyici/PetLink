import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/petLink.png', width: 200,),
              // Container(
              //   width: 50,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(15),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black26,
              //         blurRadius: 10,
              //         offset: const Offset(0, 7),
              //       ),
              //     ],
              //   ),
              //   child: IconButton(
              //     icon: const Icon(Icons.notifications_none_outlined, size: 35, color: Colors.black),
              //     onPressed: () {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(content: Text('Hola xd')),
              //       );
              //     },
              //   ),
              // ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 16),
                IconButton(
                    icon: Badge.count(count:3, child: const Icon(Icons.notifications)),
                    iconSize: 30,
                    color: Colors.black,
                    padding: EdgeInsets.all(15),
                    onPressed: () {},
                  ), 
              ],
            ),
            ],
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Hola Nayeli",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(160); 
}
