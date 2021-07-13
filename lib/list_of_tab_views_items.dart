import 'package:cars_shop_app/car.dart';
import 'package:cars_shop_app/inventory.dart';
import 'package:cars_shop_app/tabbarview_items.dart';
import 'package:flutter/material.dart';

class ListOfTabViewItems extends StatefulWidget {
  const ListOfTabViewItems({Key? key}) : super(key: key);

  @override
  _ListOfTabViewItemsState createState() => _ListOfTabViewItemsState();
}

class _ListOfTabViewItemsState extends State<ListOfTabViewItems> {
  InvertoryOfCars _invertoryOfCars = InvertoryOfCars();

  @override
  Widget build(BuildContext context) {
    _invertoryOfCars.clear();
    _invertoryOfCars.addCars();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView(
        children: List.generate(
          _invertoryOfCars.getCars().length,
          (index) {
            return TabBarViewItem(
              car: _invertoryOfCars.getCars()[index],
              carName: _invertoryOfCars.getCars()[index].carName,
              carPrice: _invertoryOfCars.addCars()[index].carPrice,
            );
          },
        ),
      ),
    );
  }
}
