import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DateInput extends StatelessWidget {
  final String label;

  const DateInput({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: '25 July',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: label == 'Guests'
                    ? SvgPicture.asset('assets/images/checkin.svg')
                    : SvgPicture.asset('assets/images/checkout.svg'),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
            readOnly: true,
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365)),
              );
              if (picked != null) {
                // Handle the picked date
              }
            },
          ),
        ),
      ],
    );
  }
}
