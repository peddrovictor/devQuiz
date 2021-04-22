import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Container(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              strokeWidth: 10,
              value: .50,
              backgroundColor: AppColors.chartSecondary,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
            ),
          ),
          Center(
              child: Text(
            "50%",
            style: AppTextStyles.heading,
          ))
        ],
      ),
    );
  }
}
