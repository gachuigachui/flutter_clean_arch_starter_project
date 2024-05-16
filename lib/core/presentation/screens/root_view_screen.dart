import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch_starter_project/features/dashboard/presentation/screens/dashboard_screen.dart';
 
import '../../../../../core/presentation/screens/base_screen.dart';
import '../../../../../core/presentation/widgets/custom_app_bar.dart';
 
class RootViewScreen extends StatefulWidget {
  late final PageController pageController; // = PageController(initialPage: 0);
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
    currentPage = 2;
    pages = [
       DashboardScreen(),
       DashboardScreen(),
       DashboardScreen(),
       DashboardScreen(),
    ];
    widget.pageController = PageController(initialPage: currentPage);

    var labels = [
      "Feature",
      "Feature",
      "Feature",
      "Feature",
      "Feature",
    ];

    List<IconData> icons = <IconData>[
      Icons.school,
      Icons.light,
      Icons.dashboard,
      Icons.local_library,
      Icons.people_alt,
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
        children: pages,
      ),
    );
  }
}

class StudyAndRevisionHomeScreen extends StatelessWidget {
  const StudyAndRevisionHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: Text('StudyAndRevisionHome')),
      body: SingleChildScrollView(
        child: Column(
          children: [Text("StudyAndRevisionHome")],
        ),
      ),
    );
  }
}
