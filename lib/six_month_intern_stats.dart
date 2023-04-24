import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SixMonthInternStats extends StatelessWidget {  @override
Widget build(BuildContext context) {
  // TODO: implement build
  return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 4,
          centerTitle: true,
          backgroundColor: Color(0xFF3778FF),
          title: Text('Six Month Interns Data',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),),
        ),

        body: Center(
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text('View the Stats of 6 Month Interns',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22,
                      color: Color(0xFF23395d)),
                  textAlign: TextAlign.center,),

                SizedBox(height: 25,),

                // academic result table
                Center(
                  child: SingleChildScrollView(
                    // scrollDirection: Axis.horizontal,
                    child: Table(
                      border: TableBorder.all(),

                      columnWidths: {
                        0: FractionColumnWidth(0.21),
                        1: FractionColumnWidth(0.20),
                        2: FractionColumnWidth(0.22),
                        3: FractionColumnWidth(0.20),
                        4: FractionColumnWidth(0.25),
                        5: FractionColumnWidth(0.20),
                      },
                      children: [
                        buildRow(['Roll No.', 'Student Name', 'Company Placed',
                          'Remote/ \nOnsite', 'Would you be in Campus during intern or not?', 'Contact'], isHeader: true),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Remote', 'No', 'Click Here']),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Onsite', 'No', 'Click Here']),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Onsite', 'No', 'Click Here']),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Remote', 'Yes', 'Click Here']),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Remote', 'Yes', 'Click Here']),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Remote', 'Yes', 'Click Here']),
                        buildRow(['20106056', 'Sia Sharma', 'Amazon', 'Remote', 'Yes', 'Click Here']),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      )
  );
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
  children: cells.map((cell) => Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(cell,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader ? 14 : 12,
          color: isHeader ? Color(0xFF3778FF) : Colors.black,
        )),
  )).toList(),

);
}
