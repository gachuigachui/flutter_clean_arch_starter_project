import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/widgets/horizontal_live_class_verticle_list.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/widgets/hero_section_widget.dart';
 
import '../../../../core/constants/route_constants.dart';
import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../core/presentation/widgets/custom_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text("ECR Printer")),
        drawer: Navigator.of(context).canPop() ? null : CustomDrawer.drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // hero section
            const HeroSectionWidget(),

            const SizedBox(height: 10),

            //
            const Text(
              "Your Documents",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10),

            //
            Expanded(
                child: HorizontalCardList(
              horizontalCardListData: HorizontalCardList.demoList(),
            )),

            const SizedBox(height: 10),

            //
            // GridLessonTile()
          ],
        ),
      ),
    );
  }
}

class GridLessonTile extends StatelessWidget {
  const GridLessonTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 10, // Change this number according to your needs
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(featureRoutePrefix);
          },
          child: GridTile(
            child: Container(
              height: 200, // Taller item
              width: 100,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),

              child: Stack(
                children: [
                  Positioned(
                      top: 5,
                      right: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Lesson Title",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1.0, horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: Colors.white),
                              ),
                              child: const Text(
                                "Topic | Course",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.timer_rounded,
                              size: 20,
                              color: Colors.black,
                            ),
                            Text(
                              '5 minutes',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
