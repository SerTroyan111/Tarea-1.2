import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'Tarea 1.2',
      home: Scaffold
      (
        appBar: AppBar
        (
          //title: const Text('Tarea 1.2'),
        ),

        body: const Center
        (
          child: Column
          (
            children: 
            [
              Text('Welcome to', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Text('Reminders', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 60,),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.quickreply, size: 60,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text('Quick Creation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text('Simply type in your list, ask Siri, or add a'),
                      Text('reminder from your Calendar app'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.food_bank, size: 60,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text('Grocery Shopping', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text('Create a grocery list that automatically'),
                      Text('sort items you add by cattegory'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.share, size: 60,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text('Easy Sharing', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text('Colaborate on a list, and even assign'),
                      Text('individual task'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.square, size: 60,),
                  Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text('Powerful Organization', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text('Create a new list to match your needs,'),
                      Text('categorize reminders with tags, and'),
                      Text('manage reminders around your work'),
                      Text('flox with Smart Lists'),
                    ],
                  )
                ],
              ),

              SizedBox(height: 120,),

              // Text('Hola'),
              //FloatingActionButton(onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}