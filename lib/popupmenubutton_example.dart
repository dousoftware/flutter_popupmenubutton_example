import 'package:flutter/material.dart';

class PopupMenuButtonExample extends StatefulWidget {
  const PopupMenuButtonExample({super.key});

  @override
  State<PopupMenuButtonExample> createState() => _PopupMenuButtonExampleState();
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
  String yapilanSecim = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String secim) {
          setState(() {
            yapilanSecim = secim;
          });
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            const PopupMenuItem(
              value: 'Paylaş',
              child: Text("Paylaş"),
            ),
            const PopupMenuItem(
              value: 'Değerlendir',
              child: Text("Değerlendir"),
            ),
            const PopupMenuItem(
              value: 'Kapat',
              child: Text("Kapat"),
            )
          ];
        },
      ),
    );
  }
}
