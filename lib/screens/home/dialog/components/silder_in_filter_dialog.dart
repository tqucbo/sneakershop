import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class SliderInFilterDialog extends StatefulWidget {
  final double startValue, endValue;
  final int divisions;
  final String calcUnit;

  const SliderInFilterDialog({
    Key? key,
    required this.startValue,
    required this.endValue,
    required this.calcUnit,
    required this.divisions,
  }) : super(key: key);

  @override
  State<SliderInFilterDialog> createState() => _SliderInFilterDialogState();
}

class _SliderInFilterDialogState extends State<SliderInFilterDialog> {
  RangeValues _currentRangeValues = const RangeValues(0, 0);

  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues(
        widget.startValue,
        (widget.endValue - widget.startValue) / widget.divisions +
            widget.startValue);
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: primaryColor,
      inactiveColor: primaryColor.withOpacity(0.32),
      values: _currentRangeValues,
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
      min: widget.startValue,
      max: widget.endValue,
      divisions: widget.divisions,
      labels: RangeLabels(
        widget.calcUnit + _currentRangeValues.start.round().toString(),
        widget.calcUnit + _currentRangeValues.end.round().toString(),
      ),
    );
  }
}
