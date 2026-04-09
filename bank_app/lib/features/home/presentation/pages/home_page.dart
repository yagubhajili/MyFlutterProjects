import 'package:bank_app/core/constants/colors.dart';
import 'package:bank_app/features/home/presentation/pages/sections/add_card_section.dart';
import 'package:bank_app/features/home/presentation/pages/sections/saved_payments_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 4),
            Text(
              '\$12,345',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: Colors.black, size: 32),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: Colors.black, size: 32),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            AddCardSection(),
            SizedBox(height: 20),
            SavedPaymentsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.scaffoldBackground,
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, size: 28, color: Colors.black),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.more_horiz_outlined, size: 28, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
