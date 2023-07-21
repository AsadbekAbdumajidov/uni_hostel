import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uni_hostel/core/themes/app_colors.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({super.key, this.img = "", required this.size, this.onTap});
  final String? img;
  final double size;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: CachedNetworkImage(
          imageUrl: img??"",
          height: size,
          width:size,
          fit: BoxFit.cover,
          errorWidget: (_, __, ___) => const ErrorImageProfile(),
          placeholder: (_, __) => const ErrorImageProfile(),
        ),
      ),
    );
  }
}

class ErrorImageProfile extends StatelessWidget {
  const ErrorImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.all(1),
          child: const CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              child: Icon(Icons.person_outline, color: AppColors.blackColor)),
        ),
      ),
    );
  }
}
