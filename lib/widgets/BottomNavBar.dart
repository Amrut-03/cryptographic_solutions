import 'package:cryptographic_solutions/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90.h,
          width: 350.w,
        ),
        Positioned(
          bottom: -80.w,
          child: Container(
            height: 160.h,
            width: 350.w,
            decoration: BoxDecoration(
              color: AppTemplates.bgClr,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(700.r),
                topRight: Radius.circular(700.r),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 85.w,
          child: GestureDetector(
            onTap: () => _onItemTapped(0),
            child: Icon(
              Icons.message,
              color: _selectedIndex == 0 ? AppTemplates.txtClr : Colors.grey,
            ),
          ),
        ),
        Positioned(
          bottom: 20.h,
          right: 85.w,
          child: GestureDetector(
            onTap: () => _onItemTapped(1),
            child: Icon(
              Icons.call,
              color: _selectedIndex == 1 ? AppTemplates.txtClr : Colors.grey,
            ),
          ),
        ),
        Positioned(
          bottom: -35.h,
          left: 110.w,
          child: Container(
            height: 65.h,
            width: 130.w,
            decoration: BoxDecoration(
              color: AppTemplates.txtClr,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.r),
                topRight: Radius.circular(100.r),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          left: 165.w,
          child: GestureDetector(
            onTap: () => _onItemTapped(2),
            child: Icon(
              Icons.home,
              color: _selectedIndex == 2 ? AppTemplates.txtClr : Colors.grey,
            ),
          ),
        ),
        Positioned(
          bottom: _selectedIndex == 0 ? -9.h : -30.h,
          left: 115.w,
          child: Transform.rotate(
            angle: 30 * (3.1415926535897932 / 180),
            child: Icon(
              Icons.star,
              size: 35.w,
              color: AppTemplates.txtClr,
            ),
          ),
        ),
        Positioned(
          bottom: _selectedIndex == 1 ? -9.h : -30.h,
          right: 115.w,
          child: Transform.rotate(
            angle: 50 * (3.1415926535897932 / 180),
            child: Icon(
              Icons.star,
              size: 35.w,
              color: AppTemplates.txtClr,
            ),
          ),
        ),
        Positioned(
          bottom: _selectedIndex != 0 && _selectedIndex != 1 ? 8.h : -30.h,
          right: 155.w,
          child: Icon(
            Icons.star,
            size: 35.w,
            color: AppTemplates.txtClr,
          ),
        ),
      ],
    );
  }
}
