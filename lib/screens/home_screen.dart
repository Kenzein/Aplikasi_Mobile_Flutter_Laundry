import 'package:flutter/material.dart';
import 'package:money_laundry/widgets/app_sidebar.dart';
import 'package:money_laundry/widgets/custom_card.dart';
import 'package:money_laundry/widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppSidebar(),
      body: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.local_laundry_service, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Money Laundry",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.person, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Card
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Welcome Back"),
                  SizedBox(height: 5),
                  Text("Kenzy", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),

          // List menu
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                MenuButton(
                  icon: Icons.shopping_cart,
                  label: "Order",
                  onTap: () {},
                ),
                MenuButton(icon: Icons.list, label: "List Order", onTap: () {}),
                MenuButton(icon: Icons.report, label: "Report", onTap: () {}),
                MenuButton(
                  icon: Icons.home_repair_service,
                  label: "Service",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
