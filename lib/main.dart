import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/app_colors.dart';
import 'constants/app_icons.dart';
import 'pages/bus_routes_page/view/bus_route_page_view.dart';
import 'pages/cards_page/view/cards_page_view.dart';
import 'pages/home_page/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Antalya Kart',
        theme: ThemeData(
          fontFamily: "Trenda",
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: AppColors.bottomNavBarActive,
              unselectedItemColor: AppColors.bottomNavBarDeactive,
              showUnselectedLabels: true),
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
            primary: AppColors.primaryColor,
          ),
        ),
        home: const BottomNavBarPage(),
      ),
    );
  }
}

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> page = [
      const HomePageView(),
      CardsPageView(),
      const BusRoutePageView(),
      const HomePageView(),
    ];
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: index == 0
                ? Image.asset(AppIcons.homeFilled)
                : Image.asset(AppIcons.home),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: index == 1
                ? Image.asset(AppIcons.cardsFilled)
                : Image.asset(AppIcons.cards),
            label: "Kartlarım",
          ),
          BottomNavigationBarItem(
            icon: index == 2
                ? Image.asset(AppIcons.busFilled)
                : Image.asset(AppIcons.bus),
            label: "Hatlar",
          ),
          BottomNavigationBarItem(
            icon: index == 3
                ? Image.asset(AppIcons.profileFilled)
                : Image.asset(AppIcons.profile),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
