
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/screens/home_screens/home_screen.dart';
import 'package:trip_trek/screens/notification/notification_screen.dart';
import 'package:trip_trek/screens/profile/profile_screen.dart';
import 'package:trip_trek/screens/wishlist/wishlist_screen.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}
int index=0;
List scrrens = [
  const HomeScreen(),
  const WishlistScreen(),
  const NotificationScreen(),
  const ProfileScreen()

];
class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Palette.erieBlack
        ),
        child: BottomNavigationBar(
          //backgroundColor: Paletts.erieBlack,
          fixedColor: Palette.snow,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: (selectedIndex){
            setState(() {
              index = selectedIndex;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home-2.png",scale:1.5),
              activeIcon: Image.asset("assets/icons/home.png",scale: 1.5,),
              label: "Home"
              ),
        
                 BottomNavigationBarItem(
              icon:Image.asset("assets/icons/heartout.png",scale:1.5),
              activeIcon: Image.asset("assets/icons/heart.png",scale:1.5),
              label: "Wishlist"
              ),
        
                 BottomNavigationBarItem(
              icon: Image.asset("assets/icons/notification.png",scale: 1.5,),
              activeIcon: Image.asset("assets/icons/notificationB.png",scale: 1.4,),
              label: "Notification"
              ),
        
                 BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user.png",scale: 1.5,),
              activeIcon: Image.asset("assets/icons/userB.png",scale: 1.5,),
              label: "Profile"
              ),
          ],
        ),
      ),
        body: scrrens[index],
      
    );
  }
}