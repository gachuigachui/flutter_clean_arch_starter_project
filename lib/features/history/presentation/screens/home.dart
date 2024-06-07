// FeatureHome
import 'package:flutter/material.dart';

import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/themes/default_theme.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../core/presentation/widgets/custom_card.dart';
import '../routes/route_constants.dart';

class PrintHistoryHomeScreen extends StatelessWidget {
  const PrintHistoryHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('FeatureHome Screen')),
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
                                    .pushNamed('featureHomeRoute');
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
      ),
    );
  }
}

// HistoryHome
class HistoryHomeScreen extends StatelessWidget {
  const HistoryHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('HistoryHome Screen')),
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
                          'HistoryHome Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the HistoryHome Screen',
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
                                    .pushNamed(pHistoryHomeRoute);
                              },
                              child: const Text(
                                'HistoryHome Screen',
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
      ),
    );
  }
}

// HistoryDocuments
class HistoryDocumentsScreen extends StatelessWidget {
  const HistoryDocumentsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('HistoryDocuments Screen')),
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
                          'HistoryDocuments Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the HistoryDocuments Screen',
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
                                    .pushNamed(pHistoryDocumentsRoute);
                              },
                              child: const Text(
                                'HistoryDocuments Screen',
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
      ),
    );
  }
}

// HistoryDocument
class HistoryDocumentScreen extends StatelessWidget {
  const HistoryDocumentScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('HistoryDocument Screen')),
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
                          'HistoryDocument Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the HistoryDocument Screen',
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
                                    .pushNamed(pHistoryDocumentRoute);
                              },
                              child: const Text(
                                'HistoryDocument Screen',
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
      ),
    );
  }
}

// HistoryItemPrint
class HistoryItemPrintScreen extends StatelessWidget {
  const HistoryItemPrintScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('HistoryItemPrint Screen')),
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
                          'HistoryItemPrint Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the HistoryItemPrint Screen',
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
                                    .pushNamed('tutorsDefaultRoutePrefix');
                              },
                              child: const Text(
                                'HistoryItemPrint Screen',
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
      ),
    );
  }
}
