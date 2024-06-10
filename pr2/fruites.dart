import'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("🛍️List of fruites"),
          backgroundColor:Color.fromRGBO(0, 115, 136,1),
          centerTitle:true,


        ),
        body:Center(
          child:Text.rich(TextSpan(children:[
            TextSpan(
              text:"🍎apple\n",
              style:TextStyle(
                color:Colors.red,
              ),
            ),
            TextSpan(
                text:"🍇grapes\n",
                style:TextStyle(
                  color:Colors.purple,
                ),
              ),
            TextSpan(
              text:"🍒cherry\n",
              style:TextStyle(
                color:Colors.pink,
              ),
            ),
            TextSpan(
            text:"🍓strawberry\n",
            style:TextStyle(
              color:Colors.redAccent,
            ),
          ),

            TextSpan(
          text:"🥭mango\n",
          style:TextStyle(
            color:Colors.orange,
          ),
        ),
            TextSpan(
        text:"🍍pineapple\n",
        style:TextStyle(
          color:Colors.yellow,
        ),
      ),
            TextSpan(
              text:"🍋lemon\n",
              style:TextStyle(
                color:Colors.lime,
              ),
            ),
            TextSpan(
              text:"🍉watermelon\n",
              style:TextStyle(
                color:Colors.green,
              ),
            ),
            TextSpan(
              text:"🥥coconut\n",
              style:TextStyle(
                color:Colors.brown,
              ),
  ),

  ],
          ),
          ),
        ),
        ),
  ),
  );
}
