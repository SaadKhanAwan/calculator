import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String name;
  final TextStyle? styles;
  text({
    this.name = "",
    this.styles,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Text(
        name,
        style: styles,
      ),
    );
  }
}
