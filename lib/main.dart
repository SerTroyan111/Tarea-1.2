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

        body: Center
        (
          child: Column
          (
            children: 
            [
              const Text('Welcome to', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const Text('Reminders', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const SizedBox(height: 60,),
              const Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.access_time, size: 50, color: Colors.green,),
                  SizedBox(width: 10,),
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
              const SizedBox(height: 40,),
              const Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.food_bank, size: 50, color: Colors.orange,),
                  SizedBox(width: 10,),
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
              const SizedBox(height: 40,),
              const Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.share, size: 50, color: Colors.yellow,),
                  SizedBox(width: 10,),
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
              const SizedBox(height: 40,),
              const Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Icon(Icons.square, size: 50, color: Colors.blue,),
                  SizedBox(width: 10,),
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

              const SizedBox(height: 90,),

              // Text('Hola'),
              ElevatedButton
              (
                style: ElevatedButton.styleFrom
                (
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric
                  (
                    horizontal: 130,
                    vertical: 16
                  ),
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: ()
                {
                    // print('Presionó el boton, compañero...');
                    print('Iniciando explosion en:');
                    iniciarCuentaRegresiva(3);
                },
                child: 
                const Text
                (
                  'Continue',
                  style: TextStyle
                  (
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void iniciarCuentaRegresiva(int segundos)
{
  if (segundos > 0)
  {
    Future.delayed(Duration(seconds: 1), ()
    {
      print(segundos);
      iniciarCuentaRegresiva(segundos - 1);
    });
  }
  else
  {
    Future.delayed(Duration(seconds: 1), ()
    {
      print('¡Boom!');
    });
  }
}