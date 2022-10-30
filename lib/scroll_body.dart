import 'package:flutter/material.dart';

class ScrollBody extends StatelessWidget {
  const ScrollBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildContainer("assets/images/indian.png", "Indian",),
              SizedBox(width: 8,),
              buildContainer("assets/images/chinees.png", "Chinese",),
              SizedBox(width: 8,),
              buildContainer("assets/images/korean.png", "Korean",),
              SizedBox(width: 8,),
              buildContainer("assets/images/seafood.png", "Seafood",),
              SizedBox(width: 8,),
              buildContainer("assets/images/food1.png", "Snakes",),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(String image,String name,) {
    return Container(
          width:70,
          height:70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,style: TextStyle(fontSize:14,color: Colors.white,fontWeight: FontWeight.w500),),

                  ],
                ),

              ],
            ),
          ),

        );
  }
}