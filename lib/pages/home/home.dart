import 'package:flutter/material.dart';
import 'package:skoob_clone/constants/appBarList.dart';
import 'package:skoob_clone/pages/home/views/amigos.dart';
import 'package:skoob_clone/pages/home/views/geral.dart';
import 'package:skoob_clone/pages/home/views/seguindo.dart';
import 'package:skoob_clone/pages/lancamentos/lancamentos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _currentHomeIndex = 0;

  PageController _pageController = PageController();
  PageController _homePageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (_currentIndex != next) {
        setState(() {
          _currentIndex = next;
        });
      }
    });
    _homePageController.addListener(() {
      int next = _homePageController.page.round();
      if (_currentHomeIndex != next) {
        setState(() {
          _currentHomeIndex = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 1,
        unselectedFontSize: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
            _currentIndex = index;
          });
        },
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        children: [
          _homePage(),
          Lancamentos(),
        ],
      ),
    );
  }

  _homePage() => LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            children: [
              Card(
                child: Container(
                  height: constraints.maxHeight * .13,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.7),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: BottomNavigationBar(
                          onTap: (index) {
                            setState(() {
                              _homePageController.jumpToPage(index);
                              _currentHomeIndex = index;
                            });
                          },
                          currentIndex: _currentHomeIndex,
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.language), label: 'Geral'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.person_outline),
                                label: 'Seguindo'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.people_alt_outlined),
                                label: 'Amigos'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) {
                    setState(() {
                      _currentHomeIndex = index;
                    });
                  },
                  controller: _homePageController,
                  children: [
                    Geral(),
                    Seguindo(),
                    Amigos(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
