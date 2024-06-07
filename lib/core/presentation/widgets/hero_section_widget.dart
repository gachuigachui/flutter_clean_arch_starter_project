import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/constants/route_constants.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/widgets/custom_card.dart';

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
            "Quick Templates",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 32.0,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Professional receipt templates to print in seconds",
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
              "Build trust with customers by giving your receipts a credible and genuine look by using our Receipt Remplates",
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
