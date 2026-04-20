import 'package:flutter/material.dart';
import 'package:money_laundry/screens/auth_choice_page.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  //   @override
  //   Widget build(BuildContext context) {
  //     return Drawer(
  //       child: ListView(
  //         padding: EdgeInsets.zero,
  //         children: [
  //           UserAccountsDrawerHeader(
  //             accountName: Text('Kenzy'),
  //             accountEmail: Text('kenzy.example.com'),
  //             currentAccountPicture: CircleAvatar(
  //               child: ClipOval(
  //                 child: Image.network(
  //                   'https://images.openai.com/static-rsc-4/Ri8jXVU2-otG-vVBRAYWJkQEA9lQTY9oe51OGdFUUqHypj-X7igYiyP_wEhHksa7G7TXg2mXvV2uBybo_ZWMecXOyaxXyLEwEXx9yUvRUWR20zdjsODqIvLGPeghUNGdggi4EJbMHRP-vJT06DT_e9HKsGEftudr8GMTUXvnhT0?purpose=inline',
  //                   width: 90,
  //                   height: 90,
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //             ),
  //             decoration: BoxDecoration(
  //               // color: Colors.blueGrey,
  //               image: DecorationImage(
  //                 image: NetworkImage(
  //                   'https://images.openai.com/static-rsc-4/Ri8jXVU2-otG-vVBRAYWJkQEA9lQTY9oe51OGdFUUqHypj-X7igYiyP_wEhHksa7G7TXg2mXvV2uBybo_ZWMecXOyaxXyLEwEXx9yUvRUWR20zdjsODqIvLGPeghUNGdggi4EJbMHRP-vJT06DT_e9HKsGEftudr8GMTUXvnhT0?purpose=inline',
  //                 ),
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //           // Profile
  //           ListTile(
  //             leading: Icon(Icons.account_circle),
  //             title: Text('Profile'),
  //             onTap: () => {},
  //           ),
  //           // About
  //           ListTile(
  //             leading: Icon(Icons.info),
  //             title: Text('About'),
  //             onTap: () => {},
  //           ),
  //           // Settings
  //           ListTile(
  //             leading: Icon(Icons.settings),
  //             title: Text('Settings'),
  //             onTap: () => {},
  //           ),

  //           Divider(),
  //           // Logout
  //           ListTile(
  //             leading: Icon(Icons.logout),
  //             title: Text('LogOut'),
  //             onTap: () => {},
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Header
          UserAccountsDrawerHeader(
            accountName: Text('Kenzy'),
            accountEmail: Text('kenzy.example.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://images.openai.com/static-rsc-4/Ri8jXVU2-otG-vVBRAYWJkQEA9lQTY9oe51OGdFUUqHypj-X7igYiyP_wEhHksa7G7TXg2mXvV2uBybo_ZWMecXOyaxXyLEwEXx9yUvRUWR20zdjsODqIvLGPeghUNGdggi4EJbMHRP-vJT06DT_e9HKsGEftudr8GMTUXvnhT0?purpose=inline',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              // color: Colors.blueGrey,
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.openai.com/static-rsc-4/Ri8jXVU2-otG-vVBRAYWJkQEA9lQTY9oe51OGdFUUqHypj-X7igYiyP_wEhHksa7G7TXg2mXvV2uBybo_ZWMecXOyaxXyLEwEXx9yUvRUWR20zdjsODqIvLGPeghUNGdggi4EJbMHRP-vJT06DT_e9HKsGEftudr8GMTUXvnhT0?purpose=inline',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Menu Tengah
          Expanded(
            child: ListView(
              children: [
                //  Profile
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () => {},
                ),
                // About
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () => {},
                ),
                // Settings
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          // Menu bawah
          Divider(),
          // Logout
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('LogOut', style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const AuthChoicePage()),
                (route) => false,
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
