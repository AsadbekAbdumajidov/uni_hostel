import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class AnimatedCircularProgressIndicator extends StatefulWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.count,
    required this.label,
    required this.percantage,
  }) : super(key: key);

  final int count;
  final double percantage;

  final String label;

  @override
  State<AnimatedCircularProgressIndicator> createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          child: AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: widget.percantage / 10),
              duration: Duration(milliseconds: 1000),
              builder: (context, double value, child) => Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    strokeCap: StrokeCap.round,
                    value: value,
                    color: AppColors.primaryColor,
                    strokeWidth: 4,
                    backgroundColor: AppColors.primaryColor.withOpacity(.3),
                  ),
                  Center(
                    child: Text(
                      "${widget.count}",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: Duration(seconds: 1),
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
                Text("${(value * 100).toInt()}%"),
              ],
            ),
            const SizedBox(height: 20 / 2),
            LinearProgressIndicator(
              value: value,
              color: AppColors.primaryColor,
              backgroundColor: AppColors.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
