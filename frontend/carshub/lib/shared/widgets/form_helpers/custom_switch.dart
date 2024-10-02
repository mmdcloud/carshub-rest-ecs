import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  const CustomSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(
      trackColor: MaterialStateProperty.all(Colors.black38),
      activeColor: Colors.green.withOpacity(0.4),
      inactiveThumbColor: Colors.red.withOpacity(0.4),
      activeThumbImage: const AssetImage('assets/happy_emoji.png'),
      inactiveThumbImage: const AssetImage('assets/sad_emoji.png'),
      value: value,
      onChanged: onChanged,
    );
  }
}
