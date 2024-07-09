import 'package:flutter/material.dart';
import 'package:spotify_app_ui/view/screens/likePage/likepage.dart';

import '../../view/screens/bahubalipage/bahubalipage.dart';
import '../../view/screens/emiwayPage/emiwaypage.dart';
import '../../view/screens/homepage/homepage.dart';
import '../../view/screens/musicpage/songpage.dart';
import '../../view/screens/splachscreen/spalch.dart';

class Routes {
  static String spalchPage = '/';
  static String homePage = 'home_page';
  static String bahubaliPage = 'bahubali_page';
  static String emiwayPage = 'emiway_page';
  static String songPage = 'song_page';
  static String likePage = 'like_page';

  static Map<String, WidgetBuilder> myRoutes = {
    spalchPage: (context) => const SpalchScreen(),
    homePage: (context) => const HomePage(),
    bahubaliPage: (context) => const BahubaliPage(),
    emiwayPage: (context) => const EmiwayPage(),
    songPage: (context) => const Songpage(),
    likePage: (context) => const Likepage(),
  };
}
