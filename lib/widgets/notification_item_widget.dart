import 'package:flutter/material.dart';

class NotItem extends StatelessWidget {
  const NotItem(
      {super.key,
      required this.backColor,
      required this.shadowColor,
      required this.con,
      required this.txt1,
      required this.txt2,
      required this.txt3,
      required this.time});
  final Color backColor;
  final Color shadowColor;
  final IconData con;
  final String txt1, txt2, txt3;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  offset: Offset(0, 10),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Icon(
                con,
                color: Color(0xffffffff),
                size: 18,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 11),
            child: SizedBox(
              width: 194,
              height: 61,
              child: RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                text: TextSpan(
                  text: txt1,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff515c6f),
                  ),
                  children: [
                    TextSpan(
                      text: txt2,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffff6969),
                      ),
                    ),
                    TextSpan(
                      text: txt3,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff515c6f),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          trailing: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 27),
                child: Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff515c6f).withOpacity(0.502),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 85, right: 20),
          child: SizedBox(
            width: 350,
            child: Divider(),
          ),
        ),
      ],
    );
    // Row(
    //   children: [
    //     Container(
    //       width: 48,
    //       height: 48,
    //       decoration: BoxDecoration(
    //         color: Color(0xff8b9dff),
    //         borderRadius: BorderRadius.circular(24),
    //         boxShadow: [
    //           BoxShadow(
    //             color: Color.fromRGBO(143, 137, 214, 0.4),
    //             offset: Offset(0, 10),
    //             blurRadius: 5,
    //             spreadRadius: 2,
    //           ),
    //         ],
    //       ),
    //       child: Center(
    //         child: Icon(
    //           Icons.check_box_outlined,
    //           color: Color(0xffffffff),
    //           size: 18,
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 15),
    //       child: SizedBox(
    //         width: 194,
    //         height: 41,
    //         child: RichText(
    //           text: TextSpan(
    //             text: 'Smiley\'s Store marked your order ',
    //             style: TextStyle(
    //               fontSize: 15,
    //               fontWeight: FontWeight.w300,
    //               color: Color(0xff515c6f),
    //             ),
    //             children: [
    //               TextSpan(
    //                 text: '#1982984',
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w300,
    //                   color: Color(0xffff6969),
    //                 ),
    //               ),
    //               TextSpan(
    //                 text: ' as ',
    //                 style: TextStyle(
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.w300,
    //                   color: Color(0xff515c6f),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     Column(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
    //           child: Text(
    //             '9:20 AM',
    //             style: TextStyle(
    //               fontSize: 14,
    //               fontWeight: FontWeight.w300,
    //               color: Color(0xff515c6f).withOpacity(0.502),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
  }
}
