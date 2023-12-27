import 'package:flutter/material.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({super.key, required this.con, required this.txt});
  final IconData con;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
          child: Center(
            child: ListTile(
              leading: Icon(
                con,
                color: Color(0xff727c8e),
                size: 20,
              ),
              title: Text(
                txt,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff515c6f),
                ),
              ),
              trailing: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xff727c8e).withOpacity(0.200),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xff727c8e),
                    size: 8,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 20),
          child: SizedBox(
            width: 350,
            child: Divider(color: Color(0xff727c8e).withOpacity(0.102),),
          ),
        ),
      ],
    );
  }
}
