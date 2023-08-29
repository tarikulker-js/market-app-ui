import 'package:flutter/material.dart';
import 'package:market/components/Home/MilkAndMilkProductsCategory.dart';
import 'package:market/components/Home/ButcherProductsCategory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  var controllerForTabBar;

  @override
  void initState() {
    super.initState();
    controllerForTabBar = TabController(length: 2, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: controllerForTabBar,
          labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          tabs: [
            Tab(child: Text("Süt Ürünleri"),),
            Tab(child: Text("Kasap"),),
          ]
        ),
        Expanded(
          child: TabBarView(
            controller: controllerForTabBar,
            children: [
              MilkAndMilkProductsCategory(name: "Süt Ürünleri"),
              ButcherCategory(name: "Kasap Ürünleri",),
            ],
          ),
        )
      ],
    );
  }
}
