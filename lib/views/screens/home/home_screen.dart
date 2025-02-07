import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yohire/controller/bottom_nav_provider.dart';
import 'package:yohire/views/screens/circle_screen.dart';
import 'package:yohire/views/screens/home/home_screen_content.dart';
import 'package:yohire/views/screens/profile_screen.dart';
import 'package:yohire/views/styles/text_style.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      body: SafeArea(
        child: Consumer<BottomNavProvider>(
          builder: (context, provider, child) {
            switch (provider.selectedIndex) {
              case 0:
                return const HomeScreenContent();
              case 1:
                return const CircleScreen();
              case 2:
                return const ProfileScreen();
              default:
                return const HomeScreenContent();
            }
          },
        ),
      ),
      bottomNavigationBar: Consumer<BottomNavProvider>(
        builder: (context, provider, child) {
          return NavItems(
            currentIndex: provider.selectedIndex,
            onTap: (index) {
              provider.updateIndex(index);
            },
          );
        },
      ),
    );
  }
}

class NavItems extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const NavItems({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
      selectedIndex: currentIndex,
      onItemSelected: onTap,
      showElevation: true, // Adds a shadow effect
      backgroundColor: Colors.white,
      items: [
        FlashyTabBarItem(
          icon: Icon(Icons.home,size: 35,color: Colors.black,),
          title: Text('Home',style: customTextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black
          ),),
        ),
        FlashyTabBarItem(
          icon: Image.asset('assets/images/circle.png',width: 35,height: 35 ,fit: BoxFit.cover,),
          title: Text('Circle',style: customTextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black
          ),),
        ),
        
        FlashyTabBarItem(
          icon: Icon(Icons.person,size: 35,color: Colors.black,),
          title: Text('Profile',style: customTextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black
          ),),
        ),
      ],
    );
  }
}