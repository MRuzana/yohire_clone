import 'package:flutter/material.dart';
import 'package:yohire/utils/constants/width_height.dart';
import 'package:yohire/views/styles/text_style.dart';

// recommendations job card

Widget buildRecommendJobCard() {
  return Padding(
    padding: paddingLRB15,
    child: Container(
      width: double.infinity , 
      //margin: EdgeInsets.only(right: 10), // Add spacing between cards
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Rounded corners
        border: Border.all(
          color: const Color.fromARGB(255, 214, 213, 213), // Border color
          //  width: 1, // Border width
        ),
        
      ),
      child: Padding(
        padding: padding15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Text('Pharmacy Warehouse Assistant',
                      style: customTextStyle(
                          fontSize: 23 ,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Icon(Icons.ios_share)        
              ],
            ),
                        
            Text('Dubai, United Arab Emirates',
                style: customTextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 25, 24, 24))),
            Text('Salary Est : 1750 + ot AED',
                style: customTextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 25, 24, 24))),
            kHeight10,         
            Container(
              color: const Color.fromARGB(255, 171, 252, 174),
              
              child: Padding(
                padding: padding5 ,
                child: Text('Free accomodation / Age up to 28 /',
                style: customTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 38, 35, 35))),
              ), 
            ),
            kHeight5,
            Container(
              color: const Color.fromARGB(255, 171, 252, 174),
             
              child: Padding(
                padding: padding5,
                child: Text('SSLC / PLUS Two / D.pharm pass or fail /',
                style: customTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 38, 35, 35))),
              ), 
            ),
            kHeight5 ,
            Container(
              color: const Color.fromARGB(255, 171, 252, 174),
              
              child: Padding(
                padding: padding5,
                child: Text('Experience in medical store / pharmacy warehouse /',
                style: customTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 38, 35, 35))),
              ), 
            ),
            kHeight15,
            Text('Posted 1 Day ago',
                    style: customTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 111, 111, 111))),
                                
          ],
        ),
      ),
    ),
  );
}
