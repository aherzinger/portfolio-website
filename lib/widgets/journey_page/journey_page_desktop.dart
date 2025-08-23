import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DesktopJourneyPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  AutoSizeGroup timeLineGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    height = 1.2 * MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: 0.7 * width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                '3. My Journey',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 375,
                  child: AutoSizeText(
"""I first started programming by learning from the book 'Head-First Java'. I built a few small projects, including a Fishing-Exam App, which I even used for studying.\n
After that, I got into mobile development with Flutter. In summer 2021, I built my first production app – Fish-Finder – and released it to the Google Play Store that November.\n
This project also landed me my first Junior Developer role at MatheArena, a fast-growing EdTech startup in Austria. Over one year, I worked as a Full Stack Software Developer, gaining experience in teamwork, building real-world applications, and taking responsibility.\n
Later, I began studying Computer Science at the University of Innsbruck, where I specialized in Machine Learning and Natural Language Processing. I worked on several ML projects, including Rankify, focusing on Retrieval-Augmented Generation and intelligent information access.\n
In 2025, I graduated with a BSc in Computer Science, continuing my journey of combining research and development to create impactful technology.\n""",
                    style: Theme.of(context).textTheme.bodyText1,
                  ))
            ],
          ),
          Container(
            height: height,
            width: 472,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                ),
                TimelineTile(
                  isFirst: true,
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  startChild: Text(
                    'Summer 2020',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Got interested into programming',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  startChild: Text(
                    'Winter 2021',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Learned Java and Flutter',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  startChild: Text(
                    'November 2021',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Finished and Released Fish-Finder',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  startChild: Text(
                    'February 2022',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Got first SE Job',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                    isLast: false,
                    alignment: TimelineAlign.center,
                    indicatorStyle: IndicatorStyle(
                        width: 30,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        color: Theme.of(context).hintColor),
                    startChild: Text(
                      'October 2022',
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.end,
                    ),
                    endChild: Container(
                      height: 99,
                      child: AutoSizeText(
                        'Started studying CS at University of Innsbruck',
                        style: Theme.of(context).textTheme.bodyText1,
                        group: timeLineGroup,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    beforeLineStyle:
                        LineStyle(color: Theme.of(context).shadowColor)),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  startChild: Text(
                    '2023 - 2024',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Dived into Machine Learning and NLP',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                  isLast: false,
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  startChild: Text(
                    'Spring 2025',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Worked on Rankify an various other Machine Learning projects',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                  isLast: true,
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).hintColor),
                  startChild: Text(
                    'September 2025',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Graduated with BSc in Computer Science',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
