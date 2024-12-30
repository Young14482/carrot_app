import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  // 상태
  int selectedIndex = 0;

  // 행위
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        // 네비게이션 순서대로 쌓아야함
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      // 네비게이션 추가하기
      // BottomNavigationBar 안에는 BottomNavigationBarItem만 들어감
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        // 클릭 이벤트 추가
        onTap: (value) { // value == index값
          onClickBottomNavigation(value);
        },
        // 네비게이션 별 아이콘 지정, label을 넣지 않으면 터짐
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
        ],
      ),
    );
  }
}
