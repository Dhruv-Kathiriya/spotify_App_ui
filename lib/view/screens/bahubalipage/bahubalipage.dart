import 'package:flutter/material.dart';

import '../../../global/list/recentpalyed.dart';
import '../../../utlis/routes/routes.dart';

class BahubaliPage extends StatefulWidget {
  const BahubaliPage({super.key});

  @override
  State<BahubaliPage> createState() => _BahubaliPageState();
}

class _BahubaliPageState extends State<BahubaliPage> {
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
            Color(0xff3C474D),
            Color(0xff121212),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: h * 0.3,
                    width: w * 0.6,
                    color: Colors.white,
                    child: Image.network(
                      "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11546593_p_v8_af.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Bahubali Songs",
                          style: TextStyle(
                            fontSize: textScaler.scale(30),
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 17,
                            child: Text(
                              "D",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "Dhruv",
                            style: TextStyle(
                                fontSize: textScaler.scale(20),
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.language,
                            color: Colors.grey,
                            size: 30,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          Text(
                            "260 saves . 21min",
                            style: TextStyle(
                                fontSize: textScaler.scale(20),
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2023/08/08/13/46/man-8177415_640.jpg"),
                                  fit: BoxFit.fill),
                              border: Border.all(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: Colors.grey,
                                width: w * 0.006,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.035,
                          ),
                          const Icon(
                            Icons.add_circle,
                            color: Colors.grey,
                            size: 30,
                          ),
                          SizedBox(
                            width: w * 0.045,
                          ),
                          const Icon(
                            Icons.arrow_circle_down,
                            color: Colors.grey,
                            size: 30,
                          ),
                          SizedBox(
                            width: w * 0.045,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 30,
                          ),
                          SizedBox(
                            width: w * 0.28,
                          ),
                          const Icon(
                            Icons.repeat_one,
                            color: Color(0xff2DA156),
                            size: 45,
                          ),
                          const Icon(
                            Icons.play_circle,
                            color: Color(0xff2DA156),
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ...song.map(
                    (e) => ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.songPage,
                            arguments: e);
                      },
                      leading: Image.network(e['image']),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontSize: textScaler.scale(18),
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        e['subtitle'],
                        style: const TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                      ),
                      trailing: const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
