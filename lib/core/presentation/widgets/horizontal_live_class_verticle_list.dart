// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_clean_arch_starter_project/core/presentation/themes/default_theme.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/presentation/routes/route_constants.dart';

class HorizontalCardListData {
  final String title;
  final String subtitle;
  final String content;
  final Map<String, dynamic> meta;
  const HorizontalCardListData({
    required this.title,
    required this.subtitle,
    required this.content,
    required this.meta,
  });
}

class HorizontalCardList extends StatelessWidget {
  final List<HorizontalCardListData> horizontalCardListData;
  final demoCount;

  const HorizontalCardList({
    super.key,
    this.demoCount = 1,
    this.horizontalCardListData = const [],
  });

  static HorizontalCardListData get demoItem => const HorizontalCardListData(
        title: "Title",
        subtitle: "Subtitle",
        content:
            "Your card content here. Not to much, though! Let's keep the UI clean!",
        meta: {
          "Likes": 21,
          "Joined": "3 yrs",
        },
      );

  static List<HorizontalCardListData> demoList({int count = 3}) {
    List<HorizontalCardListData> list = [];
    for (var i = 0; i < count; i++) {
      list.add(demoItem);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: horizontalCardListData.length,
      // scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(templatesHomeRoute);
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
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      horizontalCardListData[index].title,
                      style: largeBoldTextPrimary,
                    ),
                    Text(
                      horizontalCardListData[index].content,
                      style: textPrimary,
                    ),
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
                        Text(
                          horizontalCardListData[index].subtitle,
                          style: tinyTextPrimary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // const Icon(
                        //   Icons.timer,
                        //   size: 15,
                        // ),
                        for (var mapKey
                            in horizontalCardListData[index].meta.keys)
                          Row(
                            children: [
                              Text(
                                "${mapKey}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.0,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "${horizontalCardListData[index].meta[mapKey]}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.0,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        // const Icon(
                        //   Icons.person,
                        //   size: 15,
                        // ),
                        const Text(
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
    );
  }
}
