import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(81, (int index) => index);

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {


  @override
  Widget build(BuildContext context) {
    // final ColorScheme colorScheme = Theme.of(context).colorScheme;
    // final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    // final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(

      body:


    Padding(
        padding: const EdgeInsets.all(40.0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: _items.length,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 9,
            childAspectRatio: 2.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),

          itemBuilder: (BuildContext context, int index) {
            // if (index == 0) {
            //
            // }



            return Container(

              alignment: Alignment.center,
              // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                // color: _items[index].isOdd ? oddItemColor : evenItemColor,
              ),

              child: TextField(   decoration: InputDecoration(




             hintText: "$_items"

           ,),



            ),
            );

          },

        ),






      ),


bottomNavigationBar: TextButton(onPressed: (){ }, child: Text("mmmmmmmm"),

) ,





    );


  }

}
