import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
   HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   final forKey = GlobalKey< FormState>();
   bool isNotificationsENabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Form(
          key: forKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Make home',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600), )
             , SizedBox(height: 22,)
              ,Container(
                child:Text('BEAUTIFUL',style: TextStyle(color: Colors.black54),),
              )
              ,SizedBox(height: 18,)
              ,TextFormField(
                onChanged: (value) => print(value),
                onFieldSubmitted: (value) => print(value),
                validator: (value) {
                  print(value);
                },
                decoration:InputDecoration(
                  hintText: 'First and last name',
                  focusedBorder: OutlineInputBorder (
                    borderSide:BorderSide(
                      color: Colors.black12,
                    )
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                forKey.currentState?.validate();
              }, child:Text('Validate'))
              ,SizedBox(height: 16,),
              TextFormField(onChanged: (value) => print(value),
                onFieldSubmitted: (value) => print(value),
                decoration:InputDecoration(
                  hintText: 'Email address',
                  focusedBorder: OutlineInputBorder (
                      borderSide:BorderSide(
                        color: Colors.black12,
                      )
                  ),
                ),)
              ,SizedBox(height: 16,)
             , TextFormField(onChanged: (value) => print(value),
                onFieldSubmitted: (value) => print(value),
                decoration:InputDecoration(
                  hintText: 'Password (8-20characthers)',
                  focusedBorder: OutlineInputBorder (
                      borderSide:BorderSide(
                        color: Colors.black12,
                      )
                  ),
                ),)
              ,SizedBox(height: 16,)
              ,TextFormField(onChanged: (value) => print(value),
                onFieldSubmitted: (value) => print(value),
                decoration:InputDecoration(
                  hintText: 'Mobile number (for delivery updates)',
                  focusedBorder: OutlineInputBorder (
                      borderSide:BorderSide(
                        color: Colors.black12,
                      )
                  ),
                ),)
              ,SizedBox(height: 15,)
             , Row(
          children: [
            Checkbox(value:true, onChanged: (value) {
            },)
            ,Expanded(
              child: Text('By joining Savory you are over 18'
                  'years of age or order. will receive email updates promotions and '
                  'special offers',style: TextStyle(color:Colors.black54),),
            )
            ]


        )



              ,SizedBox(height: 28,)
              ,ElevatedButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical:15,horizontal:150),
                  backgroundColor: Colors.red
                ) ,
                  onPressed: () {}, child:Text('Join Us',))
              ,SizedBox(height:113 ,),
              Container(
                child: Text('Countinue with',style:
                TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                width:140 ,height: 30,
              )
              ,ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical:15,horizontal:150),
                      backgroundColor: Colors.black
                  ) ,
                  onPressed: () {}, child:Text('Instagram',))
              ,SizedBox(height:16 ,)
              ,ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical:15,horizontal:150),
                      backgroundColor: Colors.blueAccent
                  ) ,
                  onPressed: () {}, child:Text('Facebook',))
               ,SizedBox(height: 16,)
              ,ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical:15,horizontal:160),
                      backgroundColor: Colors.blue
                  ) ,
                  onPressed: () {}, child:Text('Twitter',))

            ],
          ),

        ),


      ),

    ));
  }
}
