import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentFeedIndex = 0;

  PageController _feedController = PageController();

  @override
  void initState() {
    super.initState();
    _feedController.addListener(() {
      int next = _feedController.page.round();
      if (_currentFeedIndex != next) {
        _currentFeedIndex = next;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 38,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('151'),
                            Text('Livros'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('23'),
                            Text('Seguidores'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('135'),
                            Text('Seguindo'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('User Name'),
              SizedBox(height: 10),
              Text(
                '"Essa é apenas a descrição que o usuário do perfil colocária. Talvez alguma frase de efeito de algum livro ou autor, ou apenas uma frase qualquer tirada da internet. Sinceramente, não sei."',
              ),
              Divider(),
              BottomNavigationBar(
                currentIndex: _currentFeedIndex,
                selectedFontSize: 1,
                unselectedFontSize: 1,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.my_library_books_outlined), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.my_library_books), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.video_label), label: ''),
                ],
                onTap: (index) {
                  setState(() {
                    _feedController.jumpToPage(index);
                    _currentFeedIndex = index;
                  });
                },
              ),
              Divider(),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) {
                    _feedController.jumpToPage(index);
                  },
                  controller: _feedController,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
