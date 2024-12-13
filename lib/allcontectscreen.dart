import 'package:flutter/material.dart';

class AllContactScreen extends StatefulWidget {
  const AllContactScreen({super.key});

  @override
  State<AllContactScreen> createState() => _AllContactScreenState();
}

class _AllContactScreenState extends State<AllContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            width: double.infinity,
            height: 180,
            color: Colors.grey[300],
          ),
          // Search Bar Container
          Positioned(
            top: 50,
            left: 16,
            right: 16,
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search contacts",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Implement search action here
                      print("Search button clicked!");
                    },
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          // New simple container below the search bar
          Positioned(
            top: 125, // Adjust position to be below the search bar
            left: 16,
            right: 16,
            child: Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Contacts',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  // Swipe left icon on the right side
                  IconButton(
                    onPressed: () {
                      // Implement swipe action
                    },
                    icon: Icon(Icons.swipe_left_outlined),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
