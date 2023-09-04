import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:work/constant/constant.dart';
import 'package:work/pages/UserScreens/user_messages.dart';
import 'package:work/pages/UserScreens/user_profile.dart';
import 'package:work/pages/UserScreens/userhome.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
              tabBackgroundColor: Colors.transparent,
              
              padding: const EdgeInsets.all(10),
              haptic: true,
              tabActiveBorder: Border.all(color: primaryColor, width: 1),
              activeColor: primaryColor,
              // rippleColor: Colors.black,
              gap: 8,
              onTabChange: (index) {
                _pageController.jumpToPage(index);
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.message,
                  text: 'Message',
                ),
                GButton(
                  icon: Icons.person_2_outlined,
                  text: 'Profile',
                ),
              ]),
        ),
        body: PageView(
          // onPageChanged: (index) {},
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [UserHome(), UserMessages(), UserProfile()],
        ),
      ),
    );
  }
}
