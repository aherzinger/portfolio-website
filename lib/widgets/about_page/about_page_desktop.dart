import 'package:flutter/material.dart';

class DesktopAboutPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      width: 0.7 * width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.15 * height,
              ),
              Text(
                '1. About me',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 375,
                  child: Text(
                    "Hi, I’m Andreas Herzinger — a Computer Science graduate and NLP researcher from Austria.\n\n Since childhood, I’ve been fascinated by math and science, always curious about how things work. Whether it was calculating the mass of a mountain or puzzling over how continents fit on a flat map, I loved exploring complex ideas.\n\nThat curiosity naturally led me to technology. I started coding a few years ago, and over time it grew into a passion for Computer Science. Today, I specialize in Natural Language Processing, with a strong focus on Retrieval-Augmented Generation (RAG) and research at the intersection of language, knowledge, and intelligent systems.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ))
            ],
          ),
          Column(
            children: [
              SizedBox(height: 0.13*height,),
              Container(
                height: 597,
                width: 472,
                padding: EdgeInsets.all(40),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 498,
                        width: 363,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Theme.of(context).hintColor),
                        ),
                      ),
                    ),
                    Container(
                         height: 498,
                        width: 363,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          border: Border.all(
                              width: 5, color: Theme.of(context).hintColor),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Image.asset('assets/profile_picture.jpeg')),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
