   import 'package:flutter/material.dart';

class ChartData3 {
        ChartData3(this.x, this.y, this.size,this.color, this.y1);
            final DateTime x;
            final double y;
            final double size;
            final String y1;
            Color? color;
    }

       final List<ChartData3> chartData3 = [
             ChartData3(DateTime(2009), 35, 0.82, const Color.fromARGB(0, 45, 231, 20),''),
            ChartData3(DateTime(2010), 35, 0.82, const Color.fromARGB(166, 45, 231, 20),'\$310\nBuisness'),
            ChartData3(DateTime(2011), 120, 0.41,const Color.fromARGB(141, 45, 231, 20),'\$100\nEmi'),
            ChartData3(DateTime(2012), 70, 0.38,const Color.fromARGB(73, 45, 231, 20),'\$90\nExtras'),
            ChartData3(DateTime(2013), 150, 0.49,const Color.fromARGB(153, 45, 231, 20),'\$200\nGroceries'),
            ChartData3(DateTime(2014), 40, 0.64,const Color.fromARGB(204, 45, 231, 20),'\$300\nInsurances'),
            ChartData3(DateTime(2015), 130, 0.40,const Color.fromARGB(97, 45, 231, 20),'\$150\nRent'),
            ChartData3(DateTime(2016), 180, 0.3,const Color.fromARGB(111, 45, 231, 20),'\$100\nInternet'),
            ChartData3(DateTime(2016), 40, 1.04,const Color.fromARGB(255, 45, 231, 20),'\$500\nBuisness'),
            ChartData3(DateTime(2017), 0, .04,const Color.fromARGB(0, 45, 231, 20),''),
        ];