import 'package:cart_profile_notification_pages/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Cart',
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
          CartItemWidget(
            imagePath: 'assets/shoes.png',
            nameTxt: 'Faux Sued Ankle Boots',
            typeTxt: '7, Hot Pink',
            priceTxt: 49.99,
          ),
          CartItemWidget(
            imagePath: 'assets/bag.png',
            nameTxt: 'Bottle Green Backpack',
            typeTxt: 'Medium, Green',
            priceTxt: 20.58,
          ),
          CartItemWidget(
            imagePath: 'assets/scarf.png',
            nameTxt: 'Red Cotton Scarf',
            typeTxt: '2ft, Dark Red',
            priceTxt: 11.00,
          ),
          SizedBox(
            height: 20,
            child: Center(
              child: Divider(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff515c6f).withOpacity(0.502),
                    ),
                  ),
                  Text(
                    '\$81.57',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515c6f),
                    ),
                  ),
                  Text(
                    'Free Domestic Shipping',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff727c8e),
                    ),
                  ),
                ],
              ),
              Container(
                width: 165,
                height: 46,
                decoration: BoxDecoration(
                    color: Color(0xffff6969),
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 105, 105, 0.4),
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
                          'CHECKOUT',
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
            ],
          )
        ],
      ),
    );
  }
}
