import 'package:cart_profile_notification_pages/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffe7eaf0),
                          offset: Offset(0, 10),
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Center(
                    child: Image.asset(
                      'assets/photo.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jane Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xff515c6f),
                        ),
                      ),
                      Text(
                        'janedoe123@email.com',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff515c6f),
                        ),
                      ),
                      Container(
                        width: 121,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff727c8e))),
                        child: Center(
                          child: Text(
                            'EDIT PROFILE',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff727c8e),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: 335,
                height: 192,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffe7eaf0),
                      offset: Offset(0, 10),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileItemWidget(con: Icons.format_list_bulleted_outlined,txt: 'All My Orders',),
                    ProfileItemWidget(con: Icons.charging_station_outlined,txt: 'Pending Shipments',),
                    ProfileItemWidget(con: Icons.payment_outlined,txt: 'Pending Payments',),
                    ProfileItemWidget(con: Icons.shopping_bag_outlined,txt: 'Finished Orders',),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: 335,
                height: 192,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffe7eaf0),
                      offset: Offset(0, 10),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileItemWidget(con: Icons.mark_as_unread_outlined,txt: 'Invite Friends',),
                    ProfileItemWidget(con: Icons.headset_mic_outlined,txt: 'Customer Support',),
                    ProfileItemWidget(con: Icons.stars_outlined,txt: 'Rate Our App',),
                    ProfileItemWidget(con: Icons.rate_review_outlined,txt: 'Make a Suggestion',),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
