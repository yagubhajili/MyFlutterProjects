import 'package:flutter/material.dart';
import 'package:food_go/core/constants/colors.dart';
import 'package:food_go/features/home/presentation/widgets/burger_card.dart';
import 'package:food_go/features/home/presentation/widgets/burget_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/pngs/FoodgoLogo.png',
                  height: 38,
                  // width: 129,
                  // fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Order your favourite food!',
                  style: TextStyle(fontSize: 18, color: AppColors.textGrey),

                  // textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(child: Icon(Icons.person)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.textGrey,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryRed,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.tune, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [BurgerCategory()],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: GridView(
                  shrinkWrap: true, // Crucial inside a Column/ListView
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // <--- Exactly 2 columns
                    mainAxisSpacing: 15, // Vertical gap
                    crossAxisSpacing: 10, // Horizontal gap
                    childAspectRatio:
                        0.75, // Adjust this to make cards taller/shorter
                  ),
                  children: [
                    BurgerCard(),
                    BurgerCard(),
                    BurgerCard(),
                    BurgerCard(),
                    BurgerCard(),

                    BurgerCard(),
                    BurgerCard(),

                    BurgerCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryRed,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: AppColors.primaryRed,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.white),
              onPressed: () {},
            ),
            SizedBox(width: 40),
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
