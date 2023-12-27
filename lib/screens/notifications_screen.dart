import 'package:cart_profile_notification_pages/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';

class NotScreen extends StatelessWidget {
  const NotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close_outlined,
              color: Color(
                0xffff6969,
              ),
              weight: 18,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff515c6f),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NotItem(
              backColor: Color(0xff8b9dff),
              shadowColor: Color.fromRGBO(143, 137, 214, 0.4),
              con: Icons.library_add_check_outlined,
              txt1: 'Smiley\'s Store marked your order ',
              txt2: '#1982984',
              txt3: ' as ',
              time: '9:20 AM',
            ),
            NotItem(
              backColor: Color(0xff4ad1c7),
              shadowColor: Color.fromRGBO(118,211,211,0.4),
              con: Icons.location_on_outlined,
              txt1: 'Package from your order ',
              txt2: '#1982345',
              txt3: ' has arrived to destination country.',
              time: 'Yesterday',
            ),
            NotItem(
              backColor: Color(0xffffaf52),
              shadowColor: Color.fromRGBO(255,175,82,0.38),
              con: Icons.new_releases_outlined,
              txt1: '50% OFF of everything at ',
              txt2: 'Elegance Store',
              txt3: '!!',
              time: '15 Oct',
            ),
            NotItem(
              backColor: Color(0xffadd172),
              shadowColor: Color.fromRGBO(173,209,114,0.47),
              con: Icons.sell_outlined,
              txt1: 'BOGO Sale starting ',
              txt2: 'tomorrow',
              txt3: '. Don\'t forget to check it out for great ',
              time: '20 Sep',
            ),
          ],
        ),
      ),
    );
  }
}
