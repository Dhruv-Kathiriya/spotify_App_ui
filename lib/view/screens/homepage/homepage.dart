import 'package:flutter/material.dart';

import '../../../global/list/recentpalyed.dart';
import '../../../utlis/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);

    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: const Color(0xff242424),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xffF374A1),
                    radius: 30,
                    child: Text(
                      "D",
                      style: TextStyle(
                        fontSize: textScaler.scale(25),
                      ),
                    ),
                  ),
                  title: Text(
                    "Dhruv Kathiriya",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: textScaler.scale(20),
                    ),
                  ),
                  subtitle: const Text(
                    "View Profile",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: h * 0.04,
                ),
                title: Text(
                  "Add account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              ListTile(
                leading: Icon(
                  Icons.bolt,
                  color: Colors.white,
                  size: h * 0.04,
                ),
                title: Text(
                  "What's new",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              ListTile(
                leading: Icon(
                  Icons.history_toggle_off,
                  color: Colors.white,
                  size: h * 0.04,
                ),
                title: Text(
                  "Listening history",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: h * 0.04,
                ),
                title: Text(
                  "Settings and privacy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: const CircleAvatar(
                          backgroundColor: Color(0xffFA71A2),
                          child: Text("D"),
                        ),
                      );
                    }),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Container(
                      height: h * 0.04,
                      width: w * 0.15,
                      decoration: BoxDecoration(
                        color: const Color(0xff1DD761),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: textScaler.scale(15),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Container(
                      height: h * 0.04,
                      width: w * 0.15,
                      decoration: BoxDecoration(
                        color: const Color(0xff636363),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Music",
                          style: TextStyle(
                            fontSize: textScaler.scale(15),
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Container(
                      height: h * 0.04,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: const Color(0xff636363),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Podcasts",
                          style: TextStyle(
                            fontSize: textScaler.scale(15),
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.08,
                      width: w * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xff2A2A2A),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.likePage);
                            },
                            child: Container(
                              height: h,
                              width: w * 0.16,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff582EEC),
                                    Color(0xff582EEC),
                                    Color(0xffB1D0CD),
                                    Color(0xffB1D0CD),
                                  ],
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: h * 0.03,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.015,
                          ),
                          Text(
                            "Liked Songs",
                            style: TextStyle(
                              fontSize: textScaler.scale(20),
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: h * 0.08,
                      width: w * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xff2A2A2A),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h,
                            width: w * 0.16,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://mosaic.scdn.co/300/ab67616d00001e02049c40e032b1e6c5bbb058b5ab67616d00001e02900b9003c062f1cf0ac95855ab67616d00001e029fce03de84becbab6cc94aabab67616d00001e02d8512ae10ba0bf9b20ba110e",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: w * 0.015,
                          ),
                          Text(
                            "Sochta Hoon ke \n Woh kitane Ma...",
                            style: TextStyle(
                              fontSize: textScaler.scale(15),
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: h * 0.08,
                    //   width: w * 0.45,
                    //   decoration: BoxDecoration(
                    //     color: Colors.purple,
                    //     borderRadius: BorderRadius.circular(15),
                    //     image: const DecorationImage(
                    //       image: NetworkImage(
                    //           "https://cdn.siasat.com/wp-content/uploads/2023/06/Arijit-Singh-Pasoori-song.jpg"),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Stack(
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w * 0.92,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffB78934),
                            Color(0xff251D10),
                          ],
                        ),
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                        "https://t4.ftcdn.net/jpg/02/65/26/83/360_F_265268314_LmykO3vrtzmh3TQbBdnxj9vUczqqJXCU.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Summer Hub",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: textScaler.scale(25),
                                color: Colors.white),
                          ),
                          Text(
                            "The Dog Days of Summers are here!! So presenting the \nSummer Hub!Garb your sungalsses,and find your mu.. ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: textScaler.scale(12),
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Recently played",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.likePage);
                              },
                              child: Container(
                                height: h * 0.16,
                                width: w * 0.32,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff582EEC),
                                      Color(0xff582EEC),
                                      Color(0xffB1D0CD),
                                    ],
                                  ),
                                ),
                                child: const Icon(
                                  Icons.favorite,
                                  size: 55,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.025,
                            ),
                            Text(
                              "Liked Songs",
                              style: TextStyle(
                                fontSize: textScaler.scale(15),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: w * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.emiwayPage);
                              },
                              child: Container(
                                height: h * 0.16,
                                width: w * 0.32,
                                child: Image.network(
                                  "https://i.scdn.co/image/ab67616d00001e02972ba58fa4d1d1d40846c01d",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              "Emiway Bantai",
                              style: TextStyle(
                                fontSize: textScaler.scale(15),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: w * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.bahubaliPage);
                              },
                              child: Container(
                                height: h * 0.16,
                                width: w * 0.32,
                                child: Image.network(
                                  "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11546593_p_v8_af.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              "Bahubali Songs",
                              style: TextStyle(
                                fontSize: textScaler.scale(15),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Your favorite artists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...play.map(
                        (e) => Column(
                          children: [
                            CircleAvatar(
                              radius: 75,
                              backgroundImage: NetworkImage(
                                e['image'],
                              ),
                            ),
                            SizedBox(
                              height: h * 0.0125,
                            ),
                            Text(
                              e['name'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: textScaler.scale(17),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.4,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Best of artist",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...artist.map(
                          (e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.18,
                                width: w * 0.38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      e['image'],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: textScaler.scale(15),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: w * 0.42,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Recommended Stations",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...stations.map(
                          (e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.18,
                                width: w * 0.38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      e['image'],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: textScaler.scale(15),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: w * 0.42,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "India's Best",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...best.map(
                          (e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.18,
                                width: w * 0.38,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      e['image'],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: textScaler.scale(15),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: w * 0.42,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
