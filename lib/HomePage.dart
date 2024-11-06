import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{
  TextEditingController no1Controller=TextEditingController();
  TextEditingController no2Controller=TextEditingController();
  String result="";
  int flag=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: no1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                label: Text("no1"),
                hintText: "Enter No1 here",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11)

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),

                )

              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: no2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("no2"),
                hintText: "Enter No2 here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11)
                )
              ),

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                InkWell(
                  onTap: (){
                    flag=1;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: myDecoration(flag==1 ? true: false),
                    child: Center(child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    flag=2;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: myDecoration(flag==2 ? true:false),
                    child: Center(child: Text("-",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    flag=3;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: myDecoration(flag==3 ? true:false),
                    child: Center(child: Text("*",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  ),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    flag=4;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration:myDecoration(flag==4 ? true:false),
                    child: Center(child: Text("/",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              int no1=int.parse(no1Controller.text);
              int no2=int.parse(no2Controller.text);
              if(flag==1){
                result="${no1+no2}";
              }else if(flag==2){

                if(no1>no2){
                  result= "${no1 - no2}";
                }else{
                  result="${no2 - no1}";
                }
              }else if(flag==3){
                result= "${no1 * no2}";
              }else if(flag==4){
                result="${no1/no2}";
              }else{
                /// No operator used!!
                result="please choose any operator";
              }

              setState(() {

              });


            }, child: Text("Calculate")),
            
            SizedBox(height: 20,),

            Center(child: Text("$result",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
  BoxDecoration myDecoration(bool isselected){
    return BoxDecoration(
      border: isselected ? Border.all(
        width: 4,
        color: Colors.white
      ): Border.all(
        width: 0,
        color: Colors.transparent
      ),
        color: Colors.black,
        borderRadius: BorderRadius.circular(10)
    );
  }
}