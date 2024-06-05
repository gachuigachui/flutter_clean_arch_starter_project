
// FeatureHome
import 'package:flutter/material.dart';
 
import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/themes/default_theme.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../core/presentation/widgets/custom_card.dart';
import '../routes/route_constants.dart';

class FeatureHomeScreen extends StatelessWidget {
const FeatureHomeScreen({super.key});
@override
Widget build(BuildContext context) {
return BaseScreen(
appBar: CustomAppBar.appBar(
title: const Text('FeatureHome Screen')),
body: Padding(
padding: const EdgeInsets.all(8.0),
child: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SizedBox(
width: double.maxFinite,
child: CustomCard(
child: Column(
children: [
const Text(
'FeatureHome Screen',
style: largeBoldTextPrimary,
),
const SizedBox(height: 5),
const Text(
'This is the FeatureHome Screen',
style: textPrimary,
),
const SizedBox(
height: 30,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(
onPressed: () {
Navigator.of(context)
.pushNamed(featureHomeRoute);
},
child: const Text(
'FeatureHome Screen',
style: textPrimary,
),
),
],
)
],
),
),
),
],
),
),
),
),);
  
}
}