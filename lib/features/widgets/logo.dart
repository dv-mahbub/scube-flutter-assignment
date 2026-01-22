import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/values/app_assets.dart';

class Logo extends StatelessWidget {
  final double? size;
  const Logo({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets().images.logo, width: size ?? 0.3.sw);
  }
}
