import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:s0ck_teacher/submodule/constants/color.dart';
import 'package:s0ck_teacher/submodule/constants/text_style.dart';
import 'package:s0ck_teacher/views/home/home_page.dart';
import 'package:s0ck_teacher/views/record/record_page.dart';

class PageManagerPage extends StatefulWidget {
  const PageManagerPage({super.key});

  @override
  State<PageManagerPage> createState() => _PageManagerPageState();
}

class _PageManagerPageState extends State<PageManagerPage> {
  List<Widget> pages = [const HomePage(), const RecordPage(), const MyPage()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: S0ckColor.gray100, width: 0.5)),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: S0ckColor.white,
          currentIndex: _currentIndex,
          unselectedLabelStyle: S0ckTextStyle.body2,
          selectedLabelStyle: S0ckTextStyle.body2,
          unselectedItemColor: S0ckColor.gray200,
          selectedItemColor: S0ckColor.gray900,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Symbols.home, fill: 1),
              label: '홈',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Symbols.event_note, fill: 1),
              label: '기록',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Symbols.person_rounded, fill: 1),
              label: '내 정보',
            ),
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
