import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectRoomButton extends StatelessWidget {
  const SelectRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 20,
                      offset: Offset(4, 8))
                ]),
            child: SvgPicture.asset(
              'assets/images/saved.svg',
              width: 35,
            )),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // TODO: Implement room selection functionality
            },
            child: Text('Select a Room'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF75D37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 17),
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
