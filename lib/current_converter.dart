import 'package:flutter/material.dart';

class CurrecyConverter extends StatefulWidget {

  @override
  State<CurrecyConverter> createState() => _CurrecyConverterState();
}

class _CurrecyConverterState extends State<CurrecyConverter> {

  // Initial Selected Value
  String dropdownvalue1 = 'USD';
  String dropdownvalue2 = 'PKR';

  // List of items in our dropdown menu
  var items1 = [
    'USD',
    'PKR',
    'EURO',
  ];

  var items2 = [
    'USD',
    'PKR',
    'EURO',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Currency Converter"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),

        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Input Value to Convert",
              ),
            ),

            SizedBox(height: 20,),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [

              DropdownButton(

                // Initial Value
                value: dropdownvalue1,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items1.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue1 = newValue!;
                  });
                },
              ),
              
              FloatingActionButton(onPressed: (){},
                child: Icon(Icons.swap_horiz, size: 30,),),

              DropdownButton(
                // Initial Value
                value: dropdownvalue2,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items2.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });
                },
              ),
            ],
           ),

            SizedBox(height: 20,),



            Container(
             width: double.infinity,
             height: 50,
              child: (
                ElevatedButton(onPressed: () {}, child: Text("Convert", style: TextStyle(fontSize: 24),))
              ),

            ),

            SizedBox(height: 20,),

            Text("Result", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
