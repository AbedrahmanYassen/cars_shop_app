import 'package:cars_shop_app/car.dart';
import 'package:cars_shop_app/featured.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderingACar extends StatefulWidget {
  String imageurl;
  int priceOfTheCar;
  OrderingACar({required this.imageurl, required this.priceOfTheCar, Key? key})
      : super(key: key);

  @override
  _OrderingACarState createState() => _OrderingACarState();
}

class _OrderingACarState extends State<OrderingACar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DREAM CARS',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Car picture
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenWidth * 0.6,
                        height: screenHeight * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                widget.imageurl,
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 50),
                            child: _drawIcon(
                              iconData: Icons.thumb_up_alt_outlined,
                            ),
                          ),
                          _drawIcon(
                            iconData: Icons.thumb_down_alt_outlined,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //price square
                Row(
                  children: [
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.2,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          '\$' + widget.priceOfTheCar.round().toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                //Buy Now Button
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.15,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //FEATURED text
                Text(
                  'FEATURED',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FeaturedList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawIcon({required IconData iconData}) {
    return Card(
      elevation: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: Colors.pink),
        ),
      ),
    );
  }
}
