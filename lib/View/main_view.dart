import 'package:flutter/material.dart';
import 'package:flutter_task/View/cart.dart';
import 'package:flutter_task/View/first.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const FirstView(),
    CartScreen(),
    const Center(child: Icon(Icons.favorite)),
    const Center(child: Icon(Icons.person)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.home,
                        color:
                            _selectedIndex == 0 ? Colors.blue : Colors.black26),
                    onPressed: () => _onItemTapped(0),
                  ),
                  IconButton(
                    icon: Icon(Icons.storefront,
                        color:
                            _selectedIndex == 1 ? Colors.blue : Colors.black26),
                    onPressed: () => _onItemTapped(1),
                  ),
                  SizedBox(width: 50), // Space for FAB
                  IconButton(
                    icon: Icon(Icons.favorite_border,
                        color:
                            _selectedIndex == 2 ? Colors.blue : Colors.black26),
                    onPressed: () => _onItemTapped(2),
                  ),
                  IconButton(
                    icon: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn-front.freepik.com/images/ai/image-generator/gallery/pikaso-woman.webp"),
                      radius: 16,
                    ),
                    onPressed: () => _onItemTapped(3),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 5),
                  ),
                ],
                color: const Color.fromARGB(255, 216, 214, 214),
              ),
              height: 70,
              width: 80,
              child: Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: FloatingActionButton(
                    backgroundColor: Color(0XFF5117AC),
                    onPressed: () {},
                    child: Icon(Icons.shopping_basket, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Icon
          _buildIcon(Icons.home, Colors.teal),
          _buildIcon(Icons.store, Colors.grey),

          // Center Circle Button
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF5117AC), Color(0xFF2EC5C0)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),

          // Right Icon
          _buildIcon(Icons.favorite, Colors.grey),
          _buildIcon(Icons.person, Colors.grey),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconData, Color color) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        iconData,
        size: 30,
        color: color,
      ),
    );
  }
}
