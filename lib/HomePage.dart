import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void closeAppUsingSystemPop() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(245, 255, 255, 255),
            statusBarIconBrightness: Brightness.dark,
          ),
          title: Image.asset(
            'asset/logos.png',
            height: 50,
          ),
          // shadowColor: Color.fromARGB(245, 14, 150, 98),
          centerTitle: true,
          toolbarHeight: 100,
          // toolbarOpacity: 1,
          // elevation: 4.0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  // rippleColor: Colors.grey[300]!,
                  // hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: const Color.fromARGB(255, 226, 82, 82),
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  // tabBackgroundColor: const Color.fromARGB(255, 111, 70, 70)!,
                  color: const Color.fromARGB(169, 0, 0, 0),
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: LineIcons.shoppingBag,
                      text: 'Shopping',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            )),
        body: ListView(
          children: [
          Container(
              color: Colors.white,
              child: 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(121, 210, 209, 209),
                                borderRadius: BorderRadius.circular(50)),
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'asset/clothes_15018617.png',
                                height: 30,
                              ),
                            ),
                          ),
                          Text('Men')
                        ],
                      ),
                    ],
                  ),
          ),
                  Container(
                    color: Colors.white,
                    child: Image.asset('asset/poster1.png'),
                  ),
                  // Image.asset('asset/poster2.png'),
                  // Image.asset('asset/poster3.png'),
                  //       Image.asset('asset/poster4.png'),
                  Container(
                    height: 600, // Example of scrollable content
                    child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                    ),
                  ),
              //   ],
              // )
              // ),
        ]));
  }
}
