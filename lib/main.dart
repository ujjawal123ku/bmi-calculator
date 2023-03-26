import 'package:bmi/splsh.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),
      home: splsh(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var wtcontroller=TextEditingController();
var ftcontroller=TextEditingController();
var incontroller=TextEditingController();
var result="";
var bgcolor=Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('BMI CALCULATOR'
        ,style: TextStyle(
            fontSize: 25,

        ),
        ),
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI',style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w300
                ),),
                SizedBox(height: 70,),
                TextField(
                  controller: wtcontroller,
                  decoration: InputDecoration(
                    label: Text('enter your weight'),
                    prefixIcon:Icon(Icons.line_weight),

                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: ftcontroller,
                  decoration: InputDecoration(
                   label: Text('enter your height in feet'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: incontroller,
                  decoration: InputDecoration(
                    label: Text('enter your  height in inch'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height:25,),
                ElevatedButton( onPressed:(){
                  var weight=wtcontroller.text.toString();
                  var ft=ftcontroller.text.toString();
                  var In=incontroller.text.toString();

                  if(weight!=""&&ft!=""&&In!=""){
                    var iweight=int.parse(weight);
                    var ift=int.parse(ft);
                    var iIn=int.parse(In);
                    var tIn=(ift*12)+iIn;
                    var tcm=tIn*2.54;
                    var tm=tcm/100;
                    var bmi=iweight/(tm*tm);
                    var msg="";
                    if(bmi>25){
                      msg="you r over weight";
                      bgcolor=Colors.orange.shade200;
                    }
                    else if(bmi<18){
                      msg="u r under weight";
                      bgcolor=Colors.red.shade300;
                    }
                    else{
                      msg="u r healthy";
                      bgcolor=Colors.green.shade300;

                    }
                    setState(() {
                      result="$msg \n your bmi is :${bmi.toStringAsFixed(3)}";
                    });


                  }
                  else{
                    setState(() {
                      result="please fill al the required blanks";
                    });
                  }
                },
                    child: Text('calculate')),
                SizedBox(height: 15,),
                Text(result,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),)

              ],
            ),
          ),
        ),
      )
    );
  }
}
