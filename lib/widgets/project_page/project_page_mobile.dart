import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_site_test/widgets/project_showcase_page/project_showcase.dart';

class MobileProjectPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  AutoSizeGroup autoSizeGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
        width: 0.9 * width,
        height: 5.2 * height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.02 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '4. Projects',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AutoSizeText(
              '''Below are some of my projects. If you want to see all of my projects, head over to my Github Repository.''',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 0.07 * height,
            ),
            Column(
              children: [
                ProjectShowCase(
                    picturePaths: ['rankify.png'],
                    title: 'Rankify',
                    gitHubUrl: 'https://github.com/DataScienceUIBK/Rankify',
                    description:
                        'Modular Retrieval Augmented Generation (RAG) Framework proposed by Data Science Group of UIBK. Included multiple LLM endpoints, restructured RAG Architecture and implemented multiple RAG techniques.',
                    duration: '5 months',
                    technologiesUsed: ['python','pytorch','tensorflow','huggingface'],
                    googlePlayLinked: false,
                    autoSizeGroup: autoSizeGroup,
                  ),
                SizedBox(height: 0.05 * height),
                ProjectShowCase(
                    picturePaths: ['federated_learning.png'],
                    title: 'Federated TL',
                    gitHubUrl: 'https://github.com/aherzinger/federated-transfer-learning',
                    description:
                        'Project for my Federated Learning Course - showcasing Federated Transfer Learning with various strategies, examples and use-cases. Federated Learning Implemenation using Flower AI Framework. ',
                    duration: '2 months',
                    technologiesUsed: ['python','jupyter', 'pytorch', 'flower'],
                    autoSizeGroup: autoSizeGroup,
                  ),
                SizedBox(height: 0.05 * height),
                ProjectShowCase(
                    picturePaths: [
                      'fish_finder_1.png',
                      'fish_finder_2.png',
                      'fish_finder_3.png',
                      'fish_finder_4.png',
                      'fish_finder_5.png'
                    ],
                    title: 'Fish-Finder',
                    gitHubUrl: 'https://github.com/aherzinger/Fishing-App',
                    description:
                        'App for Fishermen, who want to track their catches.',
                    duration: '4 months',
                    technologiesUsed: ['dart', 'firebase', 'flutter', 'git'],
                    googlePlayLinked: true,
                    googlePlayUrl:
                        'https://play.google.com/store/apps/details?id=com.sendit_studios.fishing_app',
                    autoSizeGroup: autoSizeGroup,
                  ),
                SizedBox(
                  height: 0.05 * height,
                ),
                ProjectShowCase(
                    title: "Math Mini-Game",
                    description:
                        "App that let's user paint a tick, if he/she thinks the math statement is true. ",
                    gitHubUrl: "https://github.com/aherzinger/Gesture-Game",
                    duration: "1 week",
                    technologiesUsed: ["flutter", "dart", "git"],
                    autoSizeGroup: autoSizeGroup,
                    picturePaths: [
                      "math_mini_game_1.png",
                      "math_mini_game_2.png"
                    ]),
                SizedBox(
                  height: 0.05 * height,
                ),
                ProjectShowCase(
                    picturePaths: ['zivi_counter.png'],
                    title: 'Zivi-Counter',
                    gitHubUrl: 'https://github.com/aherzinger/Zivi-Counter',
                    description:
                        'App for "Zivildiener" in Austria, who want to know when their Zivildienst is done.',
                    duration: '3 days',
                    technologiesUsed: ['dart', 'flutter', 'git'],
                    autoSizeGroup: autoSizeGroup,)
              ],
            ),
          ],
        ));
  }
}
