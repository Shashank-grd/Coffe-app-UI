import 'package:flutter/material.dart';

import '../helper/beveragecard.dart';
import '../helper/coffee_card.dart';

class CoffeeHome extends StatefulWidget {
  const CoffeeHome({Key? key}) : super(key: key);

  @override
  _CoffeeScreenState createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Container
                Container(
                  padding: EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade600.withOpacity(0.5)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.waving_hand_sharp,
                                    size: 35,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20/12/2022",
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Shashank Sinha",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Icon(
                                        Icons.delete,
                                        color: Colors.black, size: 25),
                                  ),
                                ),
                                SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                  radius: 25,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      // Search Bar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.black,
                                hintText: 'Search favorite Beverages',
                                hintStyle:
                                TextStyle(color: Colors.grey.shade600),
                                border: InputBorder.none,
                                icon: Icon(Icons.search,
                                    color: Colors.grey.shade600),
                                suffixIcon: Icon(
                                  Icons.format_line_spacing_outlined,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Most Popular Beverages
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Most Popular Beverages",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2),
                  ),
                ),
                SizedBox(height: 16),

                // Beverage List
                Container(
                  height: 245,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildBeverageCard(
                          'Cappuccino', "assets/coffee1.jpg", "Espresso",
                          "Milk", 4.9, 250),
                      SizedBox(width: 15),
                      buildBeverageCard(
                          'Hot Cappuccino', "assets/coffee2.jpg", "Espresso",
                          "Milk", 4.2, 300),
                      SizedBox(width: 15),
                      buildBeverageCard('Latte', "assets/coffee3.jpg", "Espresso",
                          "Milk", 4.5, 490),
                      SizedBox(width: 15),
                      buildBeverageCard(
                          'Flat White', "assets/coffee4.jpg", "Espresso",
                          "Milk", 4.3, 500),
                    ],
                  ),
                ),

                SizedBox(height: 24),

                // Expanded Coffee Cards
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 100),
                    color: Colors.grey.shade700.withOpacity(0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "Most Popular Beverages",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        Expanded(

                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                             CoffeeCard(
                                 title: "Latte",
                                 description: "A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                 imagePath: "assets/coffee1.jpg",
                                 rating: 4.5,
                                 reviewsCount: 480,
                                 ),

                              CoffeeCard(
                                title: "Hot Coffee",
                                description: "A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                                imagePath: "assets/coffee2.jpg",
                                rating: 4.2,
                                reviewsCount: 400,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Floating bottom navigation bar
          Positioned(
            left: 20,
            right: 20,
            bottom: 20, // Adjust as needed for proper positioning
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade900.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(0, 8), // Shadow positioning
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.home_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.delete_forever, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.mark_chat_unread_outlined, color: Colors.white),
                    onPressed: () {},
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

