import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MobileAboutPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    
    return Container(
      width: double.infinity,
      height: 1.9 * height,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
                height: 0.02 * height,
              ),
              Text(
                '1. About me',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 10,
              ),
               Container(
            height: 597,
            width: width,
            padding: EdgeInsets.all(40),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 498,
                    width: 0.7*width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 5, color: Theme.of(context).hintColor),
                    ),
                  ),
                ),
                Container(
                     height: 498,
                    width: 0.7*width,
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
              SizedBox(
                  width: width,
                  child: AutoSizeText(
                    "Hi, I’m Andreas Herzinger — a Computer Science graduate and NLP researcher from Austria.\n\n Since childhood, I’ve been fascinated by math and science, always curious about how things work. Whether it was calculating the mass of a mountain or puzzling over how continents fit on a flat map, I loved exploring complex ideas.\n\nThat curiosity naturally led me to technology. I started coding a few years ago, and over time it grew into a passion for Computer Science. Today, I specialize in Natural Language Processing, with a strong focus on Retrieval-Augmented Generation (RAG) and research at the intersection of language, knowledge, and intelligent systems.",
                    style: Theme.of(context).textTheme.bodyText1,
                  )),

             

        ],
      ));
  }
}
