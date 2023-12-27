import 'package:flutter/material.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget(
      {super.key,
      required this.imagePath,
      required this.nameTxt,
      required this.typeTxt,
      required this.priceTxt});
  final String imagePath;
  final String nameTxt, typeTxt;
  final double priceTxt;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Color(0xffe7eaf0),
                offset: Offset(0, 10),
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              widget.imagePath,
              width: 65,
              height: 59,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.nameTxt,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xff515c6f),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.typeTxt,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Color(0xff515c6f),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '\$${widget.priceTxt.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xffff6969),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        value--;
                      });
                    },
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xff727c8e).withOpacity(0.200),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          size: 10,
                          color: Color(0xff727c8e),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '${value}',
                      style: TextStyle(fontSize: 15, color: Color(0xff727c8e)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        value++;
                      });
                    },
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xff727c8e).withOpacity(0.200),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 10,
                          color: Color(0xff727c8e),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 222,
                child: Divider(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
