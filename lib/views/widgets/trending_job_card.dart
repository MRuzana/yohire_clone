import 'package:flutter/material.dart';
import 'package:yohire/utils/constants/width_height.dart';
import 'package:yohire/views/styles/text_style.dart';


// trending job card

Widget buildJobCard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width:
          260, 
     // margin: EdgeInsets.only(right: 10), // Add spacing between cards
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
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/dac.png'),
                  child: Image.asset(
                    'assets/images/dac.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dacs',
                        style: customTextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    Text('Mumbai, Maharashtra',
                        style: customTextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 111, 111, 111))),
                  ],
                )
              ],
            ),
            kHeight15,
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.grey,
                  size: 12,
                ),
                kWidth3,
                Text('Posted 13 hours ago',
                    style: customTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 111, 111, 111))),
              ],
            ),
            kHeight3,
            Text('In-Shop Sales Executive',
                style: customTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ],
        ),
      ),
    ),
  );
}
