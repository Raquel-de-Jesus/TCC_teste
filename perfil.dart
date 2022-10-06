//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class perfil extends StatelessWidget {
  perfil({super.key});
  @override
  perfil createState() => perfil();

  //int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: LayoutBuilder(builder: (BuildContext, BoxConstraints) {
        return Container(
          height: BoxConstraints.maxHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/background.png"),
                fit: BoxFit.cover),
                
          ),
          child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [

              Positioned(
                  top: BoxConstraints.maxHeight * 0.08,
                  left: BoxConstraints.maxHeight * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(112, 26),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(1),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                          ),
                          child: const Expanded(
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  "Voltar",
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  //textWidthBasis: TextWidthBasis.parent,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              /*appBar: AppBar(

                leading: Image.asset('assets/img/user.png', fit: BoxFit.cover),*/
                
                                        
              ),
              body: PageView(
                controller: pageController,
                children: [
                  
                  Container(
                    height: BoxConstraints.maxHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/background.png"),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              bottomNavigationBar: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                  ],
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
                          icon: Icon(Icons.message), label: 'Mensagens'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: 'Configurações'),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        );
      }),
    );
  }
}
