// import 'package:esc_pos_utils/esc_pos_utils.dart';
// import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter_clean_arch_starter_project/features/printer/print/presentation/screens/print_now_screen.dart';

import '../../../../../core/presentation/screens/base_screen.dart'; 
import '../../../features/templates/presentation/screens/home.dart';
 
class RootViewScreen extends StatefulWidget {
  final PageController pageController = PageController(initialPage: 0);
  RootViewScreen({super.key});

  @override
  State<RootViewScreen> createState() => _RootViewScreenState();
}

class _RootViewScreenState extends State<RootViewScreen> {
  late final List<Widget> pages;
  late final List<BottomNavigationBarItem> bottomNavigationBarItems;
  late int currentPage;

  @override
  void initState() {
    // TODO:: Use AppGlobalState to determine the initial page
    currentPage = 1;

    //
    pages = [
      const DashboardScreen(),
      const PrintNowScreen(),
      TemplatesHomeScreen(),
    ];

    var labels = [
      "Home",
      "Print",
      "Templates",
    ];

    List<IconData> icons = <IconData>[
      Icons.dashboard,
      Icons.print,
      Icons.archive,
    ];

    bottomNavigationBarItems = [];
    for (var i = 0; i < labels.length; i++) {
      bottomNavigationBarItems.add(
        BottomNavigationBarItem(
          label: labels[i],
          icon: Icon(icons[i]),
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        showUnselectedLabels: true,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.black87,
        items: bottomNavigationBarItems,
        onTap: (value) {
          if (Navigator.of(context).canPop())
            Navigator.of(context).popUntil((route) => route.isFirst);
          setState(() {
            currentPage = value;
          });
          widget.pageController.jumpToPage(currentPage);
        },
      ),
      body: PageView(
        controller: widget.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
    );
  }
}
 
