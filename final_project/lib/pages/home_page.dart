import 'package:final_project/components/project_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_medicine_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //페이지 번호
  int _currentIndex = 0;
  //페이지목록
  final _pages = [
    const mainPage(0),
    const HistoryPage(1),
    const calendarPage(2),
    const alarmPage(3),
  ];

  get pagePadding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: pagePadding,
        child: SafeArea(child: _pages[_currentIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddMedicine,

        child: const Icon(CupertinoIcons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      child: Container(
        height: kBottomNavigationBarHeight,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton(
              onPressed: () => _onCurrentPage(0),
              child: Icon(
                CupertinoIcons.checkmark,
                color: _currentIndex == 0
                    ? ProjectColors.primaryColor
                    : Colors.grey[350],
              ),
            ),
            CupertinoButton(
              onPressed: () => _onCurrentPage(1),
              child: Icon(
                CupertinoIcons.text_badge_checkmark,
                color: _currentIndex == 1
                    ? ProjectColors.primaryColor
                    : Colors.grey[350],
              ),
            ),
            CupertinoButton(
              onPressed: () => _onCurrentPage(2),
              child: Icon(
                CupertinoIcons.text_badge_checkmark,
                color: _currentIndex == 2
                    ? ProjectColors.primaryColor
                    : Colors.grey[350],
              ),
            ),
            CupertinoButton(
              onPressed: () => _onCurrentPage(3),
              child: Icon(
                CupertinoIcons.text_badge_checkmark,
                color: _currentIndex == 3
                    ? ProjectColors.primaryColor
                    : Colors.grey[350],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onCurrentPage(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }

  void _onAddMedicine() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (contxt) => const AddMedicinePage()),
    );
  }
}