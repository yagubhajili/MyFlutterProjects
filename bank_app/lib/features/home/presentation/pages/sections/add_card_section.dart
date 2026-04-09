import 'package:bank_app/features/home/presentation/widgets/home_page_icon_widget.dart';
import 'package:flutter/material.dart';

class AddCardSection extends StatelessWidget {
  const AddCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.9,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top:
                      MediaQuery.of(context).size.height * 0.25 / 2 -
                      30 -
                      16, // Center vertically and adjust for padding
                  left:
                      MediaQuery.of(context).size.width * 0.9 / 2 -
                      50, // Center horizontally
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.grey,
                        // fontWeight: FontWeight.w300,
                      ),
                      Text(
                        'Add a Card',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomePageIconWidgets(label: 'Pay', icon: Icons.payment_rounded),

                HomePageIconWidgets(label: 'Send', icon: Icons.send_to_mobile),
                HomePageIconWidgets(
                  label: 'Request',
                  icon: Icons.request_quote_outlined,
                ),

                HomePageIconWidgets(
                  label: 'Receive',
                  icon: Icons.call_received_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
