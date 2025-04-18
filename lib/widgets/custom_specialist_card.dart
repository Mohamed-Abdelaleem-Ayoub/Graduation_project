import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/models/consultant_model.dart';

class ConsultantCard extends StatelessWidget {
  final ConsultantModel consultant;
  const ConsultantCard({super.key, required this.consultant});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 250,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffFFCBD4), width: 2),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.star_border),
                Icon(FontAwesomeIcons.ellipsis),
              ],
            ),

            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(consultant.image),
            ),
            const SizedBox(height: 15),

            // اسم الدكتور
            Text(
              consultant.name,
              textDirection: TextDirection.rtl,

              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),

            // التخصص
            Text(
              textDirection: TextDirection.rtl,
              consultant.description,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            // زرار المراسلة
            SizedBox(
              width: double.infinity,
              child: SizedBox(
                height: 75,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color(0xffFF8EA2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        textDirection: TextDirection.rtl,
                        consultant.address,
                        style: TextStyle(color: Colors.white),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            consultant.phoneNumber,
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.phone, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),

                // child: ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: const Color(0xffFF8EA2),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                //   onPressed: () {
                //     // action هنا
                //   },
                //   child:
                //   //const Text("Number "),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
