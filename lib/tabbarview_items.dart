import 'package:cars_shop_app/car.dart';
import 'package:cars_shop_app/inventory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabBarViewItem extends StatefulWidget {
  Car car;
  IconData? starIcons;
  String carName;
  int carPrice;
  TabBarViewItem({
    required this.car,
    required this.carName,
    required this.carPrice,
    Key? key,
  }) : super(key: key);

  @override
  _TabBarViewItemState createState() => _TabBarViewItemState();
}

class _TabBarViewItemState extends State<TabBarViewItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(widget.car.carPicture),
                    fit: BoxFit.fill)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.car.carName.toString()),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Column(children: [
                Text(
                  '\$${widget.carPrice}    ',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${widget.carPrice + 1000}',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                )
              ]),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40, left: 30),
          child: FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
