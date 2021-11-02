import 'package:flutter/material.dart';
import 'package:watch_store/details_screen/details_page.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.name,
    required this.img,
    required this.price,
  }) : super(key: key);

  final String name, img;
  final int price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, DetailsScreen.routeName),
      child: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.70,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(left: 30, bottom: 30),
                  child: Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 3,
                        ),
                      ),
                      Text(
                        '\$$price',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
