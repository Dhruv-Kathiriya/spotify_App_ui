import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class Songpage extends StatefulWidget {
  const Songpage({super.key});

  @override
  State<Songpage> createState() => _SongpageState();
}

class _SongpageState extends State<Songpage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff6D1C1B),
                Color(0xff1D1312),
              ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          color: Colors.white,
                          Icons.keyboard_arrow_down,
                          size: 40,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "PLAYING FROM PLAYLIST",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textScaler.scale(14),
                            ),
                          ),
                          Text(
                            "Bahubali Songs ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textScaler.scale(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * 0.43,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(data['image']),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.09,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['title'].toString(),
                              style: TextStyle(
                                fontSize: textScaler.scale(20),
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              data['subtitle'].toString(),
                              style: TextStyle(
                                fontSize: textScaler.scale(15),
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.check_circle,
                        size: 40,
                        color: Color(0xff2ACD62),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ProgressBar(
                      progress: const Duration(minutes: 1),
                      buffered: const Duration(minutes: 5),
                      total: const Duration(minutes: 7),
                      thumbColor: Colors.white,
                      thumbGlowColor: Color(0xff6D1C1B),
                      progressBarColor: Color(0xff6D1C1B),
                      baseBarColor: Colors.grey.shade500,
                      bufferedBarColor: Colors.white,
                      timeLabelTextStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.repeat_one,
                          size: 40,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.skip_previous,
                          size: 45,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.pause_circle,
                          size: 65,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.skip_next,
                          size: 45,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.timer_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.speaker_group,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * 0.09,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xffE02E29),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Lyrics preview",
                            style: TextStyle(
                              fontSize: textScaler.scale(25),
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
