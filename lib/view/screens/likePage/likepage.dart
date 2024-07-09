import 'package:flutter/material.dart';
import 'package:spotify_app_ui/global/list/recentpalyed.dart';

class Likepage extends StatefulWidget {
  const Likepage({super.key});

  @override
  State<Likepage> createState() => _LikepageState();
}

class _LikepageState extends State<Likepage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff1F2B5F),
            Color(0xff121212),
            Color(0xff121212),
            Color(0xff121212),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_rounded,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Liked Songs",
                      style: TextStyle(
                        fontSize: textScaler.scale(28),
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.004,
                    ),
                    const Text(
                      "52 songs",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_circle_down,
                          color: Colors.grey,
                          size: 30,
                        ),
                        SizedBox(
                          width: w * 0.61,
                        ),
                        const Icon(
                          Icons.repeat_one,
                          color: Color(0xff1DD762),
                          size: 40,
                        ),
                        SizedBox(
                          width: w * 0.03,
                        ),
                        const Icon(
                          Icons.play_circle,
                          color: Color(0xff1DD762),
                          size: 55,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Column(
                children: [
                  ...like.map(
                    (e) => ListTile(
                      leading: Image.network(e['image']),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontSize: textScaler.scale(18),
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        e['subtitle'],
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: const Icon(Icons.more_vert),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
