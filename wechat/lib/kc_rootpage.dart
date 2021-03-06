import 'package:flutter/material.dart';
import 'package:wecaht/pages/kc_chatpage.dart';
import 'package:wecaht/pages/discover/kc_discoverpage.dart';
import 'package:wecaht/pages/kc_friendspage.dart';
import 'package:wecaht/pages/minePages/kc_minepage.dart';

class KCRootPage extends StatefulWidget {
  @override
  _KCRootPageState createState() => _KCRootPageState();
}

class _KCRootPageState extends State<KCRootPage> {
  int _currentIndex = 3;
  List<Widget> _pages = [KCChatPage(),KCFriendsPage(),KCDiscoverPage(),
    KCMinePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 12.0,
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_chat.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_chat_hl.png',
                height: 20,
                width: 20,
              ),
              label: '微信'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_friends.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_friends_hl.png',
                height: 20,
                width: 20,
              ),
              label: '通讯录'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_discover.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_discover_hl.png',
                height: 20,
                width: 20,
              ),
              label: '发现'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/tabbar_mine.png',
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                'images/tabbar_mine_hl.png',
                height: 20,
                width: 20,
              ),
              label: '我'),
        ],
      ),
    );
  }
}