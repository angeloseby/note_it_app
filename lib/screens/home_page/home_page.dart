import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_it_app/screens/home_page/widgets/note_carousel.dart';
import 'package:note_it_app/screens/home_page/widgets/profile_picture.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 220, 248),
      body: Stack(
        children: [
          // Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/images/bg1.jpg"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          SafeArea(
            child: Column(
              children: [
                //This row displays the top tool bar of the UI
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.ellipsisV,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "NoteIT",
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 24,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                //This sized box is to maintain a gap between toolbar below widgets
                const SizedBox(height: 15),
                //The below is the Circle Avatar for showing profile picture of user & the welcome message
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: const [
                      SizedBox(
                        width: 60,
                      ),
                      ProfilePicture(),
                    ]),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 65),
                        Text("Hello! User",
                            style: GoogleFonts.roboto(
                                fontSize: 28, color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 65,
                        ),
                        Text(
                            "This is your todo list,\nToday you have 5 tasks to complete.",
                            style: GoogleFonts.roboto(
                                fontSize: 18, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                //This space is for cards
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      createNoteCarousel(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
