import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDropDownMenu extends StatefulWidget {
  final String? value;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final GlobalKey<FormFieldState<String>>? formKey;
  final List<IconData>? icons;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<String> items;
  final List<String> disabledItems;
  final List<String> selectedItems;
  final bool isMultiSelect;

  const CustomDropDownMenu({
    super.key,
    this.value,
    this.hintText,
    this.labelText,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.formKey,
    this.icons,
    required this.onChanged,
    this.validator,
    required this.items,
    required this.disabledItems,
    this.selectedItems = const [],
    this.isMultiSelect = false,
  });

  @override
  State<CustomDropDownMenu> createState() => CustomDropDownMenuState();
}

class CustomDropDownMenuState extends State<CustomDropDownMenu> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
    
  }

  void resetValue() {
    setState(() {
      selectedValue = null;
      widget.onChanged!(null);
      // logger.i(selectedValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      key: widget.formKey,
      isExpanded: true,
      menuMaxHeight: 300,
      value: selectedValue,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.075),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      items: widget.items
          .map(
            (String value) => DropdownMenuItem<String>(
                enabled: !widget.disabledItems.contains(value),
                // onTap: widget.disabledItems.contains(value) ? null : () {},
                value: value,
                child: Row(children: [
                  if (widget.icons != null)
                    Icon(
                      widget.icons![widget.items.indexOf(value)],
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  // if (widget.icons != null) const SizedBox(width: 10),
                  // CustomTypography.normalTypography(
                  //   text: value,
                  //   color: widget.disabledItems.contains(value)
                  //       ? Theme.of(context)
                  //           .colorScheme
                  //           .onSurface
                  //           .withOpacity(0.5)
                  //       : Theme.of(context).colorScheme.onSurface,
                  // ),
                  const Spacer(),
                  if (widget.selectedItems.contains(value))
                    Icon(
                      FontAwesomeIcons.check,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                ])),
          )
          .toList(),
      onChanged: widget.onChanged,
      validator: widget.validator,
    );
  }
}