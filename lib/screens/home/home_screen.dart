import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_food_ordering_app/components/bottom_navbar.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }

 
}

