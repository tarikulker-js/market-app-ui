import 'package:flutter/material.dart';
import 'package:market/components/Appbar.dart';
import 'package:market/components/NavigationBar.dart';
import 'package:market/screens/HomeScreen.dart';
import 'package:market/screens/ShoppingCartScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
 
class _MainScreenState extends State<MainScreen> {
  var screens = [
    HomeScreen(),
    ShoppingCartScreen(),
  ];
  var screenIndex = 0; //Home Screen Index

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Tarık Ülker"), 
              accountEmail: Text("tarik@ulkersoft.com.tr"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: NetworkImage("https://avatars.githubusercontent.com/u/59295271?v=4"), 
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),

            ListTile(title: Text("Siparişlerim"), onTap: () { Navigator.pop(context); },),
            ListTile(title: Text("İndirim Kodlarım"), onTap: () { Navigator.pop(context); },),
            ListTile(title: Text("Ayarlar"), onTap: () { Navigator.pop(context); },),
            ListTile(title: Text("Çıkış Yap"), onTap: () { Navigator.pop(context); },),
          ],
        )
      ),
      appBar: const MyAppBar(),
      body: screens[screenIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: screenIndex,
        onTap: (value) {
          setState(() {
            screenIndex = value;
          });
        },
      ),
    );
  }
}
