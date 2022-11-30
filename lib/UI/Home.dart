///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class Home extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
body:
Stack(
alignment:Alignment.topLeft,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/Frame-2-%281%29.png"),
height:MediaQuery.of(context).size.height,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Align(
alignment:Alignment.topCenter,
child:///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/latar.png"),
height:60,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
),
Align(
alignment:Alignment(0.0, -1.0),
child:Text(
"Selamat Datang ",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w800,
fontStyle:FontStyle.normal,
fontSize:15,
color:Color(0xffffffff),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(10, 0, 58, 0),
child:Align(
alignment:Alignment(0.0, -0.7),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xfff2f2f3),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
),
),
Align(
alignment:Alignment(0.9, -0.7),
child:Container(
height:40,
width:40,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
shape: BoxShape.circle,
),
child:Image.network(
 "https://picsum.photos/250?image=9",
fit:BoxFit.cover),
),
),
Align(
alignment:Alignment.bottomCenter,
child:///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/latar3.png"),
height:MediaQuery.of(context).size.height * 0.45,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
),
],),
)
;}
}