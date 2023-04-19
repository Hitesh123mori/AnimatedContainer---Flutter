import 'package:flutter/material.dart' ;

void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var _width = 100.0 ;
  var _height = 400.0 ;
  bool flag = true ;
  Decoration mydecor =  BoxDecoration(
      borderRadius: BorderRadius.circular(20) ,
       color: Colors.green ,
      ) ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: Column(
            children: [
                      AnimatedContainer(
                  width: _width ,
                  height: _height ,
                  decoration: mydecor,
                  curve: Curves.bounceIn,
                  duration: Duration(seconds: 5),
                ),

                    ElevatedButton(onPressed: (){

                      setState(() {
                        if(flag==true)
                          {
                            _height = 400.0 ;
                            _width = 100.0 ;
                            flag = false ;
                            mydecor = BoxDecoration(
                              borderRadius: BorderRadius.circular(20) ,
                              color: Colors.red ,
                            ) ;
                          }
                        else
                        {
                          _height = 100.0 ;
                          _width = 100.0 ;
                          flag = true ;
                          mydecor = BoxDecoration(
                            borderRadius: BorderRadius.circular(80) ,
                            color: Colors.orange,
                          ) ;
                        }
                      });

                    },
                        child: Text("Animate"))

            ],
          ),
        ),
      ),
    );
  }
}
