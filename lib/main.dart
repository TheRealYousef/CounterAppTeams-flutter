import 'package:flutter/material.dart';

void main() {
  runApp(counter());
}

class counter extends StatefulWidget {
  
  counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {

  int teamApoints=4;
  int teamBpoints=0;

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('points counter'),
            backgroundColor: Colors.orange,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 500,
                          child: Column(
                            children: [

                              const Text('Team A',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
                              Text('$teamApoints',style: TextStyle(fontSize: 150,fontWeight: FontWeight.w500),),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize:const Size(150, 50),
                                  ),
                                  onPressed:(){
                                    
                                    setState(() {
                                    teamApoints++;
                                    });
                                  },
                                  child: const Text(
                                    'Add 1 point  ',
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                  )),

                              const Spacer(),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize:const Size(150, 50),
                                  ),
                                  onPressed: (){
                                    
                                    setState(() {
                                    teamApoints+=2;
                                    });
                                  },
                                  child: const Text(
                                    'Add 2 points',
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                  )),

                              const Spacer(),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize:const Size(150, 50),
                                  ),
                                  onPressed: (){
                                    
                                    setState(() {
                                      teamApoints+=3;
                                    });
                                  },
                                  child: const Text(
                                    'Add 3 points',
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                  )),
                                  const Spacer(flex: 12,)
                            ],
                          ),
                        ),

                        Container( height: 500, child: const VerticalDivider(indent: 50,endIndent: 50, color: Colors.grey,thickness: 1,)),

                        Container(
                          height: 500,
                          child: Column(
                            children: [

                              const Text('Team B',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
                              Text('$teamBpoints',style: TextStyle(fontSize: 150,fontWeight: FontWeight.w500),),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize:const Size(150, 50),
                                  ),
                                  onPressed: (){
                                    setState(() {
                                    teamBpoints++;
                                    });
                                  },
                                  child: const Text(
                                    'Add 1 point  ',
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                  )),

                              const Spacer(),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize:const Size(150, 50),
                                  ),
                                  onPressed: (){
                                    setState(() {
                                    teamBpoints+=2;
                                    });
                                  },
                                  child: const Text(
                                    'Add 2 points',
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                  )),

                              const Spacer(),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    minimumSize:const Size(150, 50),
                                  ),
                                  onPressed: (){
                                     setState(() {
                                    teamBpoints+=3;
                                    });
                                  },
                                  child: const Text(
                                    'Add 3 points',
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                  )),
                                  const Spacer(flex: 12,)
                            ],
                          ),
                        ),
                      ],
                ),
              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize:const Size(150, 50),
                                ),
                                onPressed: (){
                                  setState(() {
                                    teamApoints=0;
                                    teamBpoints=0;
                                  });
                                },
                                child: const Text(
                                  'Reset',
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                )),
            
            ],
          ),
          )
    );
  }
}