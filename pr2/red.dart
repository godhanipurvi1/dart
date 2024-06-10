import'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor:Colors.black,
        appBar:AppBar(
          title:Text ('Red & White',
          style:TextStyle(color:Colors.white)),
          backgroundColor:Color.fromRGBO(227, 74, 74,1),
          centerTitle:true,


        ),
        body:Center(
          child:Text.rich(TextSpan(children:[
            TextSpan(
              text:"             g",
              style:TextStyle(
                color:Color.fromRGBO(66, 158, 75,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"R",
              style:TextStyle(
                color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"aphics\n",
              style:TextStyle(
              color:Color.fromRGBO(66, 158, 75,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"        flutt",
              style:TextStyle(
                color:Color.fromRGBO(28, 79, 133,1),
                fontSize:30,
              ),
            ),

            TextSpan(
              text:"E",
              style:TextStyle(
                color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),

            TextSpan(
              text:"r\n",
              style:TextStyle(
                 color:Color.fromRGBO(28, 79, 133,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"          an",
              style:TextStyle(
               color:Color.fromRGBO(83, 161, 81,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"D",
              style:TextStyle(
               color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"roid\n",
              style:TextStyle(
                color:Color.fromRGBO(83, 161, 81,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"DESIGN",
              style:TextStyle(
                color:Color.fromRGBO(219, 177, 40,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:" & ",
              style:TextStyle(
                color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"DEVLOP\n",
              style:TextStyle(
                color:Color.fromRGBO(219, 177, 40,1),
                fontSize:30,
              ),
            ),

            TextSpan(
              text:"              W",
              style:TextStyle(
                  color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"eb\n",
              style:TextStyle(
                 color:Color.fromRGBO(49, 139, 230,1);
                fontSize:30,
              ),
            ),



            TextSpan(
              text:"       Fash",
              style:TextStyle(
                color:Color.fromRGBO(203, 215, 63,1);
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"I",
              style:TextStyle(
               color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"on\n",
              style:TextStyle(
                color:Color.fromRGBO(203, 215, 63,1);
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"              i",
              style:TextStyle(
                color:Color.fromRGBO(24, 83, 136,1);
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"T",
              style:TextStyle(
               color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"a-cs+\n",
              style:TextStyle(
                color:Color.fromRGBO(24, 83, 136,1);
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"       Gam",
              style:TextStyle(
               color:Color.fromRGBO(136, 112, 12,1);
                fontSize:30,
              ),
            ),
            TextSpan(
              text:"E\n",
              style:TextStyle(
               color:Color.fromRGBO(244, 68, 53,1),
                fontSize:30,
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
