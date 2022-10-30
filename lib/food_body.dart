import 'package:MINTO/food_menu.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width:10,
          ),
          InkWell(onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodMenu()));
            },
              child: buildContainer("assets/images/thali.png", "Veggies Friendly", "16 varieties ")),
          SizedBox(width: 6,),
          InkWell(onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodMenu()));
            },
              child: buildContainer("assets/images/nonv.png", "Non Veg", "10 varieties ")),
        ],
      ),
    );
  }

  Container buildContainer(
      String image,
      String name,
      String place,
      ) {
    return Container(
      width: 165,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  place,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 14,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class Second extends StatelessWidget {
  const Second({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width:10,
          ),
          InkWell(onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => FoodMenu()));
          },
              child: buildContainer("assets/images/biri.png", "Biriyani", "4 varieties ")),
          SizedBox(width: 6,),
          InkWell(onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => FoodMenu()));
          },
              child: buildContainer("assets/images/bur.png", "Burgers", "5 varieties ")),
        ],
      ),
    );
  }

  Container buildContainer(
      String image,
      String name,
      String place,
      ) {
    return Container(
      width: 165,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  place,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 14,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
