import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 41),
                Text('LOGIN', style: TextStyle(fontSize: 32)),
                SizedBox(height: 53),
                InputFields(label: "Username", hintText: 'Enter your Username'),
                SizedBox(height: 25),
                InputFields(label: 'Password', hintText: '* * * * * * * '),
                SizedBox(height: 69),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4c4c7c),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text('Login', textAlign: TextAlign.center),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 1, color: Color(0xff979797)),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),

                    Expanded(
                      child: Divider(thickness: 1, color: Color(0xff979797)),
                    ),
                  ],
                ),
                SizedBox(height: 30),

                // Row(
                //   children: [
                //     Container(
                //       width: MediaQuery.of(context).size.width * 0.4,
                //       height: 1,
                //       decoration: BoxDecoration(
                //         border: Border.all(width: 1),

                //         color: Colors.grey,
                //       ),
                //     ),
                //     Text('OR'),
                //     Container(
                //       width: MediaQuery.of(context).size.width * 0.4,
                //       height: 1,
                //       decoration: BoxDecoration(
                //         border: Border.all(width: 1),
                //         color: const Color.fromARGB(255, 255, 255, 255),
                //       ),
                //     ),
                //   ],
                // ),
                // Google Login Button
                SizedBox(
                  width: double.infinity, // Makes button full width
                  height: 48,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.asset('assets/pngs/google.png', width: 24),

                    label: const Text(
                      "Login with Google",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF8875FF)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                      size: 24,
                    ),
                    label: const Text(
                      "Login with Apple",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF8875FF)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputFields extends StatelessWidget {
  final String? label;
  final String? hintText;

  const InputFields({super.key, this.label, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("$label", style: TextStyle(fontSize: 16)),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff979797), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff979797), width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
