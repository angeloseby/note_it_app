import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:note_it_app/screens/home_page/widgets/note_cards.dart';

Widget createNoteCarousel() {
  return CarouselSlider(
    options: CarouselOptions(
      viewportFraction: 0.7,
      enlargeCenterPage: true,
      height: 300.0,
      enableInfiniteScroll: false,
    ),
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return const NoteCards();
        },
      );
    }).toList(),
  );
}
