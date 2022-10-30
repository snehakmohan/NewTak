import 'package:MINTO/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                image: DecorationImage(
                    image: AssetImage("assets/images/image.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                )),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                )),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
              ),
              TextButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );},
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                  )),
              InkWell(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60,),
              Container(
                width:100,
                height:100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black,),
                    image: DecorationImage(
                        image: AssetImage("assets/images/spoon.png",),
                        fit: BoxFit.cover)),
              ),
              Text(
                "Sign Up",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30),
              ),
              Text(
                "Create an account",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name",
                    )),
              )
            ],
          ),
          SizedBox(height: 13,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                    )),
              )
            ],
          ),
          SizedBox(height: 13,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                    )),
              )
            ],
          ),
          SizedBox(height: 13,),
          TextButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );},
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    )),
              )),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text(
                "Already you have an account,",
                style: TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          )
        ],
      ),
    );

  }
}
