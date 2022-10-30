import 'package:MINTO/air_condition.dart';
import 'package:MINTO/common.dart';
import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({
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
          InkWell(onTap: (){Navigator.push(context,
              MaterialPageRoute(builder: (context) => AirCondition()));},
              child: buildContainer("assets/images/ac.png", "Air Conditioned", "6 tables")),
          SizedBox(width: 6,),
          InkWell(onTap: (){Navigator.push(context,
              MaterialPageRoute(builder: (context) => Common()));},
              child: buildContainer("assets/images/simple.png", "Common", "5 tables")),
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
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
