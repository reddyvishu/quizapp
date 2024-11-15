import "package:flutter/material.dart";




class Rules extends StatelessWidget {
  
  final String rules;
  Rules(this.rules);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin:EdgeInsets.only(top:5,left:20,bottom:10),
      child: Text( 
        rules,
        style:TextStyle(color: Colors.black,fontSize: 18,),
        textAlign: TextAlign.left,
      )
      
    );
  }
}