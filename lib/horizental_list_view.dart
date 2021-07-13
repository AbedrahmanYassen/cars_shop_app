import 'package:cars_shop_app/inventory.dart';
import 'package:cars_shop_app/order_a_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizentalListView extends StatefulWidget {
  const HorizentalListView({Key? key}) : super(key: key);

  @override
  _HorizentalListViewState createState() => _HorizentalListViewState();
}

class _HorizentalListViewState extends State<HorizentalListView> {
  InvertoryOfCars inveventory = new InvertoryOfCars();
  List<Color> _colorsOfTheCards = [
    Colors.yellowAccent,
    Colors.pinkAccent,
    Colors.lightGreenAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.lightBlueAccent,
  ];
  List<Color> _colorsOfTheTexts = [
    Colors.yellowAccent.shade400,
    Colors.pinkAccent.shade400,
    Colors.lightGreenAccent.shade400,
    Colors.purpleAccent.shade400,
    Colors.teal.shade400,
    Colors.lightBlueAccent.shade400
  ];

  @override
  Widget build(BuildContext context) {
    inveventory.clear();
    inveventory.addCars();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OrderingACar(
                      imageurl: inveventory.getCars()[index].carPicture,
                      priceOfTheCar: inveventory.getCars()[index].carPrice,
                    );
                  },
                ),
              );
            },
            child: Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: _colorsOfTheCards[index],
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Hero(
                        tag: 'pic$index',
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                inveventory
                                    .getCars()[index]
                                    .carPicture
                                    .toString(),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                        this.inveventory.getCars()[index].carPrice.toString() +
                            ' \$',
                        style: _getTextStyle(index)),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: inveventory.getCars().length,
      ),
    );
  }

  TextStyle _getTextStyle(int index) {
    return TextStyle(
        color: _colorsOfTheTexts[index],
        fontSize: 20,
        fontWeight: FontWeight.bold);
  }
}
