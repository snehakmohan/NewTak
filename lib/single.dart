import 'package:MINTO/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Single extends StatefulWidget {
  const Single({Key? key}) : super(key: key);

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListView(
          children: [
            AppBar(),
            buildRow("assets/images/avail.png", "Table no 1", "1 member",
                "\$${100}", "Available", "Book Now"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/not.png", "Table no 2", "1 member",
                "\$${100}", "Not Available", "Booked"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/avail.png", "Table no 3", "1 member",
                "\$${100}", " Available", "Book Now"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/avail.png", "Table no 4", "1 member",
                "\$${100}", "Available", "Book Now"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/avail.png", "Table no 5", "1 member",
                "\$${100}", " Available", "Book Now"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/not.png", "Table no 6", "1 member",
                "\$${100}", "Not Available", "Booked"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/not.png", "Table no 6", "1 member",
                "\$${100}", "Not Available", "Booked"),
            SizedBox(
              height: 10,
            ),
            buildRow("assets/images/not.png", "Table no 6", "1 member",
                "\$${100}", "Not Available", "Booked"),
          ],
        ),
      ),
    );
  }

  Row buildRow(String image, String table, String member, String price,
      String available, String book) {
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
                          image: AssetImage("assets/images/small.png"),
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
                            table,
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
                                    EdgeInsets.symmetric(horizontal: 4),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
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
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        "Family",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      member,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
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
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                image,
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              available,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 80,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Food()));
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          book,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
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
          width: 15,
          height: 15,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("assets/images/spoon.png"),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Single",
          style: TextStyle(
              color: Colors.black, fontSize: 27, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 175,
        ),
        Container(
          width: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 25.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.png'),
              radius: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
