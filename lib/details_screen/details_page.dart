import 'package:flutter/material.dart';
import 'package:watch_store/constants.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static String routeName = '/detailsScreen';

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/details_img1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'HISAKO',
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$249',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Named after asteroid 6 0 9 4 (h i s a k o) is currently travelling through time and space.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 90, vertical: 7),
                      child: Text(
                        'BUY NOW',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: kPrimaryColor),
                    ),
                    child: Icon(Icons.favorite_outline),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
