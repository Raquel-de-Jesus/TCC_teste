import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class perfil extends StatelessWidget {
  perfil({super.key});
  @override
  perfil createState() => perfil();

 int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: ( Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/background.png"),
                      fit: BoxFit.cover),
                ),
                child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 34,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/img/user.png"),
                        backgroundColor: Colors.white,
                        radius: 30,
                      ),
                    ),
                  ),
                  Row( child:(
                  Text("Augusto Dantas", style: TextStyle(color: Colors.orange, fontSize: 20),),),)
                  ],
                  )]
                ),
                )
            ),
              bottomNavigationBar: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: BottomNavigationBar(
                    currentIndex: _selectedIndex,
                    onTap: (option) {
                      print('clicou $option');
                      _selectedIndex = option;
                    },
                    selectedItemColor: Colors.white,
                    /* unselectedItemColor: Colors.black, */
                    backgroundColor: Colors.orange,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.fire_truck), label: 'Ultimas Viagens'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: 'Configurações'),
                    ],
                  ),
                ),
              ),
           
        
        );
      }
   
  }

