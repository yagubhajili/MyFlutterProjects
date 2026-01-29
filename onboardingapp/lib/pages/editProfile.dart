import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile')),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://picsum.photos/seed/picsum/200/300',
              ),
            ),
          ),
          SizedBox(height: 30),

          LabelAndInput(label: 'Full Name', hintText: 'Vishal Kadok'),
          SizedBox(height: 30),
          LabelAndInput(label: 'Email', hintText: 'yaqubhacili6@gmail.com'),
          SizedBox(height: 30),

          LabelAndInput(label: 'Phone Number', hintText: '+9945005050'),
          SizedBox(height: 30),

          LabelAndInput(label: 'Bio', hintText: 'I Love Fast Food', maxLine: 5),
          SizedBox(height: 30),

          SizedBox(
            height: 60,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.amber),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // 👈 smaller radius
                  ),
                ),
              ),
              child: Text('SAVE', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class LabelAndInput extends StatelessWidget {
  final int maxLine;
  final String? label;
  final String? hintText;

  const LabelAndInput({super.key, this.label, this.hintText, this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '$label',
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 82, 76, 76),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          maxLines: maxLine,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xfff0f5fa),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
