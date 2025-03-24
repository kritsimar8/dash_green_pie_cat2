import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_dash_pie_cat2/models/BubbleChart.dart';
import 'package:green_dash_pie_cat2/models/PieChart.dart';
import 'package:green_dash_pie_cat2/models/columnChart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _dateController = TextEditingController();
 

       

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(left: 200,right: 200,top: 50,bottom: 0),
        // margin: EdgeInsets.all(40),
        height: height,
        width: width,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 33, 226, 7),
                  child: Icon(Icons.pets_rounded,color: Colors.black,),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Spendings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(24, 255, 255, 255),
                  ),
                  child: Center(
                    child: Text(
                      'Deposit',
                      style: TextStyle(
                        color: const Color.fromARGB(143, 255, 255, 255),
                        fontSize: 11,

                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(22, 255, 255, 255),
                  ),
                  child: Center(
                    child: Text(
                      'Withdrawl',
                      style: TextStyle(
                        color: const Color.fromARGB(157, 255, 255, 255),
                        fontSize: 11,

                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(24, 255, 255, 255),
                  ),
                  child: Center(
                    child: Text(
                      'Savings',
                      style: TextStyle(
                        color: const Color.fromARGB(164, 255, 255, 255),
                        fontSize: 11,

                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(28, 255, 255, 255),
                  ),
                  child: Center(
                    child: Text(
                      'Loans',
                      style: TextStyle(
                        color: const Color.fromARGB(137, 255, 255, 255),
                        fontSize: 11,

                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 90),
                SizedBox(
                  height: 50,
                  width: 280,
                  child: TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      labelText: 'Search anything',
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(157, 255, 255, 255),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: const Color.fromARGB(122, 255, 255, 255),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 0.2),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.add_alert_outlined, color: Colors.black),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(0, 68, 243, 15),
                  child: Image.network('https://avatar.iran.liara.run/public/24'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Analytics\n of Spending',
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 40),
                ),
                SizedBox(width: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Your budget',
                      style: GoogleFonts.raleway(color: Colors.white, fontSize: 12),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '200,600',
                          style: GoogleFonts.figtree(fontSize: 45, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Container(
                            height: 25,
                            width: 45,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(41, 255, 255, 255),
                            ),
                            child: Center(
                              child: Text(
                                'USD',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 30),

                Container(
                  height: 70,
                  width: 250,
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Income',
                            style: GoogleFonts.raleway(
                              color: const Color.fromARGB(150, 255, 255, 255),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '+\$6,000',
                            style: GoogleFonts.raleway(
                              fontSize: 17,
                              color: const Color.fromARGB(151, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 6,
                        width: 250,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(54, 139, 195, 74),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 6,
                              width: 250,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 7, 238, 26),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$10,000 of \$4,000',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: const Color.fromARGB(117, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  height: 70,
                  width: 250,
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Expense',
                            style: GoogleFonts.raleway(
                              color: const Color.fromARGB(150, 255, 255, 255),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '-\$1,000',
                            style: GoogleFonts.raleway(
                              fontSize: 17,
                              color: const Color.fromARGB(151, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 6,
                        width: 250,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(54, 139, 195, 74),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 6,
                              width: 250,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(41, 7, 238, 26),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$1,000 of \$4,000',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: const Color.fromARGB(117, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Expanded(
              child: Row(
             
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Column(
                          children: [
                            // SizedBox(height: 50),
                            Container(
                              height: 120,
                              width: 350,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(36, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DottedBorder(
                                    color: const Color.fromARGB(
                                      255,
                                      40,
                                      228,
                                      15,
                                    ),
                                    borderType: BorderType.Circle,
                                    dashPattern: [30, 10],
                                    strokeWidth: 3,

                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: const Color.fromARGB(
                                        0,
                                        244,
                                        67,
                                        54,
                                      ),
                                      child: Icon(
                                        Icons.home,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55,
                                    width: 145,
                                    color: const Color.fromARGB(
                                      0,
                                      255,
                                      255,
                                      255,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Income after bills',
                                              style: GoogleFonts.raleway(
                                                color: const Color.fromARGB(
                                                  146,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                            ),
                                            RotatedBox(
                                              quarterTurns: 1,
                                              child: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                color: Colors.white,
                                                size: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$2,499',
                                              style: GoogleFonts.raleway(
                                                fontSize: 22,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              '+\$1,899',
                                              style: GoogleFonts.raleway(
                                                fontSize: 12,
                                                color: const Color.fromARGB(
                                                  255,
                                                  56,
                                                  240,
                                                  19,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 120,
                              width: 350,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(36, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DottedBorder(
                                    color: const Color.fromARGB(
                                      255,
                                      40,
                                      228,
                                      15,
                                    ),
                                    borderType: BorderType.Circle,
                                    dashPattern: [20, 5],
                                    strokeWidth: 3,

                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: const Color.fromARGB(
                                        0,
                                        244,
                                        67,
                                        54,
                                      ),
                                      child: Icon(
                                        Icons.check_circle,
                                        size: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55,
                                    width: 145,
                                    color: const Color.fromARGB(
                                      0,
                                      255,
                                      255,
                                      255,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Planned spending',
                                              style: GoogleFonts.raleway(
                                                color: const Color.fromARGB(
                                                  146,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                            ),
                                            RotatedBox(
                                              quarterTurns: 3,
                                              child: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                color: Colors.white,
                                                size: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$3,099',
                                              style: GoogleFonts.raleway(
                                                fontSize: 22,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              '-\$200',
                                              style: GoogleFonts.raleway(
                                                fontSize: 12,
                                                color: const Color.fromARGB(
                                                  255,
                                                  56,
                                                  240,
                                                  19,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 120,
                              width: 350,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(36, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DottedBorder(
                                    color: const Color.fromARGB(
                                      255,
                                      40,
                                      228,
                                      15,
                                    ),
                                    borderType: BorderType.Circle,
                                    dashPattern: [10, 8],
                                    strokeWidth: 3,

                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: const Color.fromARGB(
                                        0,
                                        244,
                                        67,
                                        54,
                                      ),
                                      child: Icon(
                                        size: 28,
                                        Icons.fastfood,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55,
                                    width: 145,
                                    color: const Color.fromARGB(
                                      0,
                                      255,
                                      255,
                                      255,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Other spending',
                                              style: GoogleFonts.raleway(
                                                color: const Color.fromARGB(
                                                  146,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                            ),
                                            RotatedBox(
                                              quarterTurns: 3,
                                              child: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                color: Colors.white,
                                                size: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$1,000',
                                              style: GoogleFonts.raleway(
                                                fontSize: 22,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 120,
                              width: 350,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(36, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DottedBorder(
                                    color: const Color.fromARGB(
                                      255,
                                      40,
                                      228,
                                      15,
                                    ),
                                    borderType: BorderType.Circle,
                                    dashPattern: [10, 8],
                                    strokeWidth: 3,

                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: const Color.fromARGB(
                                        0,
                                        244,
                                        67,
                                        54,
                                      ),
                                      child: Icon(
                                        size: 28,
                                        Icons.percent,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55,
                                    width: 145,
                                    color: const Color.fromARGB(
                                      0,
                                      255,
                                      255,
                                      255,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Investments',
                                              style: GoogleFonts.raleway(
                                                color: const Color.fromARGB(
                                                  146,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                            ),
                                            RotatedBox(
                                              quarterTurns: 3,
                                              child: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                color: Colors.white,
                                                size: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$900',
                                              style: GoogleFonts.raleway(
                                                fontSize: 22,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 120,
                              width: 350,
                              padding: EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(36, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DottedBorder(
                                    color: const Color.fromARGB(
                                      255,
                                      40,
                                      228,
                                      15,
                                    ),
                                    borderType: BorderType.Circle,
                                    dashPattern: [5, 4],
                                    strokeWidth: 3,

                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: const Color.fromARGB(
                                        0,
                                        244,
                                        67,
                                        54,
                                      ),
                                      child: Icon(
                                        size: 28,
                                        Icons.build_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55,
                                    width: 145,
                                    color: const Color.fromARGB(
                                      0,
                                      255,
                                      255,
                                      255,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Unplanned',
                                              style: GoogleFonts.raleway(
                                                color: const Color.fromARGB(
                                                  146,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                            ),
                                            RotatedBox(
                                              quarterTurns: 3,
                                              child: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                color: Colors.white,
                                                size: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$467',
                                              style: GoogleFonts.raleway(
                                                fontSize: 22,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 320,
                              width: 380,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Available',
                                      style: GoogleFonts.raleway(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 260,
                                    width: 385,
                                    color: const Color.fromARGB(0, 0, 0, 0),
                                    child: SfCircularChart(
                                      series: <CircularSeries>[
                                        PieSeries<ChartData, String>(
                                          dataSource: chartData,

                                          pointColorMapper:
                                              (ChartData data, _) => data.color,
                                          xValueMapper:
                                              (ChartData data, _) => data.x,
                                          yValueMapper:
                                              (ChartData data, _) => data.y,
                                          explode: true,
                                          explodeAll: true,
                                          explodeOffset: '5',
                                          dataLabelMapper:
                                              (ChartData data, _) =>
                                                  ('${data.x}'),
                                          dataLabelSettings: DataLabelSettings(
                                            isVisible: true,
                                            textStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            labelPosition:
                                                ChartDataLabelPosition.outside,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.only(top: 20,left: 20,right: 30),
                              height: 320,
                              width: 380,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  26,
                                  255,
                                  255,
                                  255,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Upcoming',
                                    style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontSize: 26,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 60,
                                    width: 380,
                                    color: const Color.fromARGB(0, 255, 255, 255),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 40,
                                          
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: const Color.fromARGB(255, 60, 233, 17),
                                          ),
                                          child: Icon(Icons.business_outlined),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Home Rental',
                                            style: GoogleFonts.raleway(
                                              color: Colors.white,
                                              fontSize: 12
                                            ),),
                                            Text('in 5 days',
                                            style: GoogleFonts.raleway(
                                              color: const Color.fromARGB(101, 255, 255, 255),
                                              fontSize: 12
                                            ),)
                                          ],
                                        ),
                                        Spacer(),
                                        Text('\$200',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 23
                                        ),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 60,
                                    width: 380,
                                    color: const Color.fromARGB(0, 255, 255, 255),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 40,
                                          
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: const Color.fromARGB(255, 60, 233, 17),
                                          ),
                                          child: Icon(Icons.directions_car_filled_outlined),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Car Insurance',
                                            style: GoogleFonts.raleway(
                                              color: Colors.white,
                                              fontSize: 12
                                            ),),
                                            Text('in 7 days',
                                            style: GoogleFonts.raleway(
                                              color: const Color.fromARGB(101, 255, 255, 255),
                                              fontSize: 12
                                            ),)
                                          ],
                                        ),
                                        Spacer(),
                                        Text('\$200',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 23
                                        ),)
                                      ],
                                    ),
                                  ),
                                   SizedBox(height: 10,),
                                  Container(
                                    height: 60,
                                    width: 380,
                                    color: const Color.fromARGB(0, 255, 255, 255),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 40,
                                          
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: const Color.fromARGB(255, 60, 233, 17),
                                          ),
                                          child: Icon(Icons.cell_tower_outlined),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Internet Bills',
                                            style: GoogleFonts.raleway(
                                              color: Colors.white,
                                              fontSize: 12
                                            ),),
                                            Text('in 15 days',
                                            style: GoogleFonts.raleway(
                                              color: const Color.fromARGB(101, 255, 255, 255),
                                              fontSize: 12
                                            ),)
                                          ],
                                        ),
                                        Spacer(),
                                        Text('\$120',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 23
                                        ),)
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(flex: 1, child: Container(
                    color: const Color.fromARGB(0, 255, 255, 255),
                    child: Column(
                      children: [
                        Container(
                          height: 320,
                          width: 800,
                          padding: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 67, 230, 17),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Spending Over Time', 
                                  style: GoogleFonts.raleway(
                                    color: Colors.black,
                                    fontSize: 26
                                  ),
                                  ),
                                  Spacer(),
                                  Text('12,000',
                                  style: GoogleFonts.raleway(
                                    color: Colors.black,
                                    fontSize: 28
                                  ),),
                                  SizedBox(width: 8,),
                                  Container(
                                    height: 25,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(20, 0, 0, 0)
                                    ),
                                    child: Center(child: Text('USD',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                    )),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 230,
                                width: 650,
                                color: const Color.fromARGB(0, 255, 255, 255),
                                child: SfCartesianChart(
                                  plotAreaBorderWidth:0,
                                  primaryXAxis: CategoryAxis(
                                    axisLine: AxisLine(
                                      width: 0
                                    ),
                                    majorGridLines: MajorGridLines(
                                      width: 0
                                    ),
                                    majorTickLines: MajorTickLines(
                                      width: 0
                                    ),
                                  ),
                                  primaryYAxis: NumericAxis(
                                    minimum: 0,
                                    maximum: 3000,
                                    axisLine: AxisLine(
                                      width: 0
                                    ),
                                     majorGridLines: MajorGridLines(
                                      width: 0
                                    ),
                                    majorTickLines: MajorTickLines(
                                      width: 0
                                    ),
                                  ),
                                  series: <CartesianSeries<ChartData2,String>>[
                                    ColumnSeries<ChartData2,String>(
                                      dataSource: chartData2,
                                      width: 0.9,
                                      borderRadius: BorderRadius.circular(50),
                                      pointColorMapper: (ChartData2 data, _)=> data.color,
                                      xValueMapper: (ChartData2 data, _)=> data.x,
                                      yValueMapper: (ChartData2 data, _)=> data.y)
                                  ],
                                ),
                              ),
                            
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                          Container(
                                height: 320,
                                width: 800,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(34, 255, 255, 255) ,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: SizedBox(
                                  height: 300,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 30,
                                        left: 30,
                                        child: Text('Top Spendings',
                                        style: GoogleFonts.raleway(
                                          fontSize: 24,
                                          color: Colors.white
                                        ),
                                        ),
                                      ),
                                       SfCartesianChart(
                                      plotAreaBorderWidth: 0,
                                      margin: EdgeInsets.all(0),
                                      primaryXAxis: DateTimeAxis(
                                        isVisible: false,
                                         axisLine: AxisLine(
                                        width: 0
                                      ),
                                      majorGridLines: MajorGridLines(
                                        width: 0
                                      ),
                                      majorTickLines: MajorTickLines(
                                        width: 0
                                      ),
                                      ),
                                      primaryYAxis: NumericAxis(
                                        isVisible: false,
                                      ),
                                      series: <CartesianSeries>[
                                        BubbleSeries<ChartData3,DateTime>(
                                          dataSource: chartData3,
                                          minimumRadius: 10,
                                          maximumRadius: 50,
                                          dataLabelMapper: (ChartData3 data, _)=> data.y1,
                                           dataLabelSettings: DataLabelSettings(
                                              isVisible: true,
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromARGB(147, 0, 0, 0)
                                              ),
                                              labelAlignment: ChartDataLabelAlignment.middle,
                                              labelPosition:
                                                  ChartDataLabelPosition.inside,
                                            ),
                                          pointColorMapper: (ChartData3 data, _)=> data.color,
                                          sizeValueMapper: (ChartData3 data , _ )=> data.size,
                                          xValueMapper: (ChartData3 data , _)=> data.x,
                                          yValueMapper: (ChartData3 data , _)=> data.y)
                                      ],
                                    ),
                                    ]
                                   
                                  ),
                                ),
                              )
                      ],
                    ),
                    
                    )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



   