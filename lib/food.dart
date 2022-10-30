import 'package:MINTO/food_body.dart';
import 'package:MINTO/scroll_body.dart';
import 'package:MINTO/top_row.dart';
import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FoodBody(),
    );
  }
}

class FoodBody extends StatelessWidget {
  const FoodBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView(
        children: [
          AppBar(),
          Divider(
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Famous Cusines", style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),)
            ],
          ),SizedBox(height:6,),
          Slider(),
          Divider(
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width:10,),
              Text("Categories", style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),),
              SizedBox(width: 140,),
              Text("See more", style: TextStyle(
                  color: Colors.black,
                  fontSize:16,
                  fontWeight: FontWeight.w400),)
            ],
          ),
          ScrollBody(),
          Divider(),
          First(),
          Second(),

        ],
      ),
    );
  }
}


class Slider extends StatelessWidget {
  const Slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width:17,),
            buildContainer("assets/images/slider1.png", "Indian Thali", "“Good Food for Good Moments”"),
            SizedBox(width:10,),
            buildContainer("assets/images/cold1.png", "Coffee"," “It’s coffee o’clock”"),
            SizedBox(width:10,),
            buildContainer("assets/images/burge1.png", "Burger", "“Let the burger party begin!”"),

          ],
        ),
      ),
    );
  }

  Container buildContainer(String image,String name,String desc) {
    return Container(
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(13),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        desc,
                        style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ],
              )
          );
  }
}




class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 15,
              height: 10,
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
              width: 5,
            ),
            Text(
              "Food Court",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 130,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 25,
            )
          ],
        ),
      ],
    );
  }
}
