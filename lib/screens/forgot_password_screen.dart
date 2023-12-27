import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 297,
            height: 61,
            child: Text(
              'Enter the email address you used to create your account and we will email you a link to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color(0xff515c6f),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: 325,
            height: 59,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffe7eaf0),
                    offset: Offset(0, 10),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ]),
            child: TextFormField(
              validator: (value) {
                if (value == null || value == '') {
                  return 'Email is required';
                } else if (!value.split('@').last.contains('gmail')) {
                  return 'Enter Valid Gmail';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              cursorColor: Color(0xffff6969),
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.email_outlined,
                  size: 20,
                  color: Color(
                    0xff727c8e,
                  ),
                ),
                label: Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Color(0xff515c6f).withOpacity(0.502),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 330,
              height: 46,
              decoration: BoxDecoration(
                  color: Color(0xffff6969),
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(4, 255, 105, 105),
                      offset: Offset(0, 10),
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ]),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'SEND EMAIL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Container(
                        width: 29,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xffffffff),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Color(
                            0xffff6969,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
