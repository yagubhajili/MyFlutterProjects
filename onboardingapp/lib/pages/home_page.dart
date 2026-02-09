import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text(
                  'DELIVER TO',
                  style: TextStyle(color: Color(0xffFC6E2A), fontSize: 12),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Halal Lab office',
                    style: TextStyle(color: Color(0xff676767), fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_drop_down, size: 15),
                ],
              ),
            ],
          ),
          actions: [Icon(Icons.shopping_bag, size: 40), SizedBox(width: 10)],
        ),

        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginpage');
                  },
                  child: Row(
                    children: [
                      Text('Login'),
                      SizedBox(width: 20),
                      Icon(Icons.login),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profilepage');
                  },
                  child: Row(
                    children: [
                      Text('Profile'),
                      SizedBox(width: 20),
                      Icon(Icons.person),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text(
                  'Hey Halal, Good Afternoon!',
                  style: TextStyle(fontSize: 16),
                  // textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 16),
              SearchBar(
                leading: Icon(Icons.search),
                hintText: 'Search dishes, restaurants',
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Categories', style: TextStyle(fontSize: 24)),
                  Row(
                    children: [
                      Text('See All', style: TextStyle(fontSize: 19)),
                      Icon(Icons.arrow_forward_ios_rounded, size: 15),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories(text: 'All'),
                    SizedBox(width: 10),
                    Categories(text: 'Hot Dog'),
                    SizedBox(width: 10),
                    Categories(text: 'Burger'),
                    SizedBox(width: 10),
                    Categories(text: 'Pizza'),
                    SizedBox(width: 10),
                    Categories(text: 'Salads'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Open Restaurants', style: TextStyle(fontSize: 24)),
                  Row(
                    children: [
                      Text('See All', style: TextStyle(fontSize: 19)),
                      Icon(Icons.arrow_forward_ios_rounded, size: 15),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              Expanded(
                child: ListView(
                  children: [
                    RestaurantNames(),
                    RestaurantNames(),
                    RestaurantNames(),
                    RestaurantNames(),
                    RestaurantNames(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantNames extends StatelessWidget {
  const RestaurantNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 137,
          width: 360,
          decoration: BoxDecoration(
            color: Color(0xff98A8B8),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 8),

        Align(
          alignment: AlignmentGeometry.topLeft,
          child: Text('Rose Garden Restaurant', style: TextStyle(fontSize: 24)),
        ),
        Align(
          alignment: AlignmentGeometry.topLeft,
          child: Text(
            'Burger - Chiken - Riche - Wings',
            style: TextStyle(fontSize: 17, color: Color(0xffA0A5BA)),
          ),
        ),
        SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.star_border_outlined),
                SizedBox(width: 5),
                Text('4.7'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.delivery_dining_outlined),
                SizedBox(width: 5),

                Text('Free'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.hourglass_bottom),
                SizedBox(width: 5),

                Text('20 min'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  final String? text;
  const Categories({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 237, 237),
        borderRadius: BorderRadius.circular(30),
      ),
      // height: 30,
      // width: 135,
      child: Row(
        children: [Icon(Icons.person), SizedBox(width: 12), Text('$text')],
      ),
    );
  }
}
