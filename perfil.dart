import 'package:change_now/components/button_back.dart';
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
        body: (Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/background.png"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Column(children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  //height: 100,
                  backgroundColor: Colors.orange,
                  radius: 53,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/img/user.png"),
                    backgroundColor: Colors.white,
                    radius: 50,
                  ),
                ),
                
                Column(children: [
                  Row(children: [
                    Column(children: [
                      Text(
                        "Change",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                    Image.asset(
                      'assets/img/logo.png',
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ]),
                  ButtonBack(),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonBack(),
                ])
              ],
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              "Augusto Dantas",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Lorem ipsum dolor sit amet. Aut autem blanditiis sed galisum corporis non illo eius eos corporis quidem ut autem neque aut incidunt quasi.",
                style: TextStyle(color: Colors.grey, fontSize: 15)),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                "CPF: ",
                style: TextStyle(color: Colors.orange, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text("101.101.101-01",
                  style: TextStyle(color: Colors.grey, fontSize: 15))
            ]),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                "Telefone: ",
                style: TextStyle(color: Colors.orange, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text("(75 9 4002-8922)",
                  style: TextStyle(color: Colors.grey, fontSize: 15))
            ]),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                "Email: ",
                style: TextStyle(color: Colors.orange, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text("levidantas@gmail.com",
                  style: TextStyle(color: Colors.grey, fontSize: 15))
            ]),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                "Senha: ",
                style: TextStyle(color: Colors.orange, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text("*********",
                  style: TextStyle(color: Colors.grey, fontSize: 15))
            ]),
            SizedBox(
              height: 20,
            ),
          ])
        ],
      ),
    )),
    bottomNavigationBar:
    Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fire_truck), label: 'Ultimas Viagens'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configurações'),
          ],
        ),
      ),
    )
    );
  }
}
