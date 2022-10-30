import 'package:MINTO/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({Key? key}) : super(key: key);

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListView(
          children: [
            AppBar(),
            buildRow("assets/images/bur.png", "Burger", "Single : \$${100}","Full  : \$${180}",),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/korean.png", "Korean", "Single : \$${200}","Full  : \$${300}",),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/chinees.png", "Noodles", "Single : \$${250}","Full  : \$${400}",),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/bur.png", "Chicken Burger", "Single : \$${150}","Full  : \$${300}",),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/thali.png", "Veg Thali", "Single : \$${150}","Full  : \$${300}",),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/indian.png", "Rice and Curry", "Single : \$${200}","Full  : \$${400}",),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/seafood.png", "SeaFood", "Single : \$${550}","Full  : \$${800}",),

          ],
        ),
      ),
    );
  }
  Row buildRow( String image,String item,String Single, String price,   ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 19,
        ),
        Container(
            width: 320,
            height: 207,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  width: 320,
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            item,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 170,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width:15,
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                            Single,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    SizedBox(
                      width:70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding:
                          EdgeInsets.symmetric(horizontal:3),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (index) {},
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width:10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                                "Full: \$${200}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        SizedBox(
                          width:80,
                        ),
                        InkWell(
                          onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Food()));},
                          child: Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),

                      ],
                    ),



                  ],
                )
              ],
            )),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 15,height: 15,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/spoon.png"
                  ),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width:5,
        ),
        Text(
          "Food Menu",
          style: TextStyle(
              color: Colors.black, fontSize:25, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 135,
        ),
        Container(
          width: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius:25.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.png'),
              radius:25.0,
            ),
          ),
        ),
      ],
    );
  }
}
