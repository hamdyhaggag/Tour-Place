import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneInput extends StatefulWidget {
  final ValueChanged<String> onPhoneChanged;
  final ValueChanged<bool> onPhoneValidationChanged;

  const PhoneInput(
      {super.key,
      required this.onPhoneChanged,
      required this.onPhoneValidationChanged});

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  List<Map<String, String>> phoneCodes = [
    {'country': 'Egypt', 'code': '+20'},
    {'country': 'United States', 'code': '+1'},
    {'country': 'Canada', 'code': '+1'},
    {'country': 'France', 'code': '+33'},
    {'country': 'United Kingdom', 'code': '+44'},
    {'country': 'Germany', 'code': '+49'},
    {'country': 'Japan', 'code': '+81'},
    {'country': 'Vietnam', 'code': '+84'},
    {'country': 'Australia', 'code': '+61'},
    {'country': 'India', 'code': '+91'},
  ];

  String? selectedCode;
  String phoneNumber = '';
  bool isValid = false;

  @override
  void initState() {
    selectedCode = '+20';
    super.initState();
  }

  bool validatePhoneNumber(String phone) {
    if (phone.isEmpty) return false;

    String cleanPhone = phone.replaceAll(RegExp(r'\D'), '');

    return cleanPhone.length >= 10;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFD1D1D1)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: DropdownButton<String>(
              value: selectedCode,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCode = newValue;
                });
              },
              underline: SizedBox(),
              items: phoneCodes.map((Map<String, String> phoneCode) {
                return DropdownMenuItem<String>(
                  value: phoneCode['code'],
                  child: Row(
                    children: [
                      Text(phoneCode['code']!),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: '1234567890',
                hintStyle: TextStyle(
                  color: Color(0xFF696969),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.14,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 17),
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                  isValid = validatePhoneNumber(phoneNumber);
                });

                widget.onPhoneChanged(phoneNumber);
                widget.onPhoneValidationChanged(isValid);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: isValid
                ? SvgPicture.asset(
                    'assets/images/checked.svg',
                    width: 14,
                    height: 14,
                  )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
