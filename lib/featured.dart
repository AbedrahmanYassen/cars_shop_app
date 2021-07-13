import 'package:cars_shop_app/inventory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatefulWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  _FeaturedListState createState() => _FeaturedListState();
}

class _FeaturedListState extends State<FeaturedList> {
  InvertoryOfCars _invertoryOfCars = InvertoryOfCars();
  @override
  Widget build(BuildContext context) {
    _invertoryOfCars.clear();
    _invertoryOfCars.addCars();

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate((_invertoryOfCars.getCars().length / 2).round(),
            (index) {
          return _getFeaturedItems(index);
        }),
      ),
    );
  }

  Widget _getFeaturedItems(int index) {
    int theListLength = _invertoryOfCars.getCars().length;
    if ((2 * index + 1) > theListLength || (2 * index) > theListLength) {}
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          _getPartOfFeaturedItem(2 * index),
          _getPartOfFeaturedItem(2 * index + 1)
        ],
      ),
    );
  }

  Widget _getPartOfFeaturedItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(_invertoryOfCars.getCars()[index].carPicture),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                _invertoryOfCars.getCars()[index].carName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  '\$${_invertoryOfCars.getCars()[index].carPrice.round().toString()}'),
            ],
          ),
        ],
      ),
    );
  }
}
