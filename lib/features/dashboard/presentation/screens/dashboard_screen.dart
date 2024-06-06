import 'package:flutter/material.dart';
 
import '../../../../core/constants/route_constants.dart';
import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../core/presentation/widgets/custom_card.dart';
import '../../../../core/presentation/widgets/custom_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text("ECR Printer")),
        drawer: Navigator.of(context).canPop() ? null : CustomDrawer.drawer(),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // hero section
              HeroSectionWidget(),

              SizedBox(height: 10),

              //
              Text(
                "Your Documents",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10),

              //
              HorizontalLiveClassVerticleList(),

              SizedBox(height: 10),

              //
              // GridLessonTile()
            ],
          ),
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
                        padding: EdgeInsets.symmetric(
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
                            SizedBox(height: 5),
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

class HorizontalLiveClassVerticleList extends StatelessWidget {
  const HorizontalLiveClassVerticleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(featureRoutePrefix);
          },
          child: Container(
            margin: const EdgeInsets.all(6.0),
            height: 100,
            width: MediaQuery.of(context).size.width / 4.3,
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.orangeAccent,
            ),
            child: const Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Text("Title"),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 3,
                  left: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15,
                          ),
                          Text(
                            "8:30PM",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                            ),
                          ),
                          Icon(
                            Icons.person,
                            size: 15,
                          ),
                          Text(
                            "13",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ), // Change this number according to your needs
      ),
    );
  }
}

class HeroSectionWidget extends StatelessWidget {
  const HeroSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Find your gem",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 32.0,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "This cool feature is designed to make your life easier.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 3),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 38.0),
            child: Text(
              "Engineering simply means life easier. What is your idea? Have you seen a p;roblem that you can solve with a digital platform?'.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
              ),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(featureRoutePrefix);
              },
              child: const Text("Explore Now"))
        ],
      ),
    );
  }
}
