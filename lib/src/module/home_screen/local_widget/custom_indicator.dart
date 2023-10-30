import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
class CustomRectangularIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomRectangularIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    paint.color = CustomColor.primaryColor; // Set the color of your custom indicator
    paint.style = PaintingStyle.fill;

    final double indicatorHeight = 4.h; // Height of the rectangular indicator
    final double indicatorWidth = configuration.size!.width / 3; // Width of the rectangular indicator
    final double indicatorRadius = 2.r; // Radius of the corners

    final Rect rect = Rect.fromPoints(
      offset.translate((configuration.size!.width - indicatorWidth) / 3, configuration.size!.height - indicatorHeight),
      offset.translate((configuration.size!.width + indicatorWidth) / 3, configuration.size!.height),
    );
    final RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(indicatorRadius));
    canvas.drawRRect(rRect, paint);
  }
}





