import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_horiz, size: 50),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Row(
              // children: [
              //   Container(
              //     height: 130,
              //     width: 130,

              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(100),
              //       color: Colors.red,
              //     ),
              //     child: Image.network(
              //       'https://fastly.picsum.photos/id/319/200/300.jpg?hmac=-xZWQr-2igun1QhUD5zoRCQKvRl7bjB_gIbQuv26oj0',
              //       fit: BoxFit.cover,

              //     ),
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 50, // Controls the size of the circle
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/seed/picsum/200/300',
                  ),
                  // or AssetImage('assets/your_image.png')
                ),
                SizedBox(width: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Vishal Kadok', style: TextStyle(fontSize: 20)),
                    Text(
                      'I Love Fast Food',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff6f8fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClickableInfo(
                    icon: Icon(Icons.person, color: Colors.orange),
                    text: "Personal Info",
                  ),
                  ClickableInfo(
                    icon: Icon(Icons.map, color: Colors.blue),
                    text: "Adresses",
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff6f8fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClickableInfo(
                    icon: Icon(Icons.card_giftcard, color: Colors.lightBlue),
                    text: "Cart",
                  ),
                  ClickableInfo(
                    icon: Icon(Icons.favorite, color: Colors.purple),
                    text: "Favorite",
                  ),
                  ClickableInfo(
                    icon: Icon(Icons.notifications, color: Colors.amber),
                    text: "Notifications",
                  ),
                  ClickableInfo(
                    icon: Icon(Icons.payment, color: Colors.lightBlue),
                    text: "Payment Method",
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff6f8fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClickableInfo(
                    icon: Icon(Icons.question_mark, color: Colors.orange),
                    text: "FAQs",
                  ),
                  ClickableInfo(
                    icon: Icon(Icons.reviews, color: Colors.cyan),
                    text: "User Reviews",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/editprofile');
                    },
                    child: ClickableInfo(
                      icon: Icon(Icons.settings, color: Colors.blue),
                      text: "Settings",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff6f8fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClickableInfo(
                    ontap: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.logout, color: Colors.orange),
                    text: "Log Out",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClickableInfo extends StatelessWidget {
  final Icon? icon;
  final String? text;
  final VoidCallback? ontap;
  const ClickableInfo({super.key, this.icon, this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: icon,
      title: Text('$text'),
      trailing: Icon(Icons.arrow_right),
    );
  }
}
