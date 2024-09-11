import 'package:flutter/material.dart';

class CustomPopupMenu extends StatefulWidget {
  final List<String> items;
  final bool isBadgeFormat;
  final Function(String)? onSelected;
  final Widget child;
  const CustomPopupMenu({
    super.key,
    required this.items,
    this.onSelected,
    this.isBadgeFormat = false,
    required this.child,
  });

  @override
  State<CustomPopupMenu> createState() => _CustomPopupMenuState();
}

class _CustomPopupMenuState extends State<CustomPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(0, 30),
      itemBuilder: (context) {
        return widget.items
            .map(
              (element) => PopupMenuItem<String>(
                child: Text(
                  element,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            )
            .toList();
      },
      onSelected: widget.onSelected,
      child: widget.child,
    );
  }
}
