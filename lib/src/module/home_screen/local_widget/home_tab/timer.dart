import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';

class CountdownWidget extends StatefulWidget {
  final Duration duration;

  const CountdownWidget({Key? key, required this.duration}) : super(key: key);

  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Duration _remainingTime;
  late ValueNotifier<String> _formattedTime;
  late DateTime _endTime;

  @override
  void initState() {
    super.initState();
    _remainingTime = widget.duration;
    _formattedTime = ValueNotifier(_formatDuration(_remainingTime));
    _endTime = DateTime.now().add(widget.duration);

    // Update the remaining time every second
    Timer.periodic(Duration(seconds: 1), _updateTime);
  }

  void _updateTime(Timer timer) {
    final now = DateTime.now();
    if (_endTime.isAfter(now)) {
      setState(() {
        _remainingTime = _endTime.difference(now);
        _formattedTime.value = _formatDuration(_remainingTime);
      });
    } else {
      timer.cancel();
    }
  }

  String _formatDuration(Duration duration) {
    return '${duration.inHours}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}'
        ':${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _formattedTime,
      builder: (context, value, child) {
        return TextMedium(
            text: value,
            fontSize: 13.sp,
          color: CustomColor.primaryColor,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}