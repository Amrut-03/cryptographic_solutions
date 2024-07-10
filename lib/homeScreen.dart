import 'package:cryptographic_solutions/widgets/BottomNavBar.dart';
import 'package:cryptographic_solutions/widgets/ListOfEmployees.dart';
import 'package:cryptographic_solutions/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: const Bottomnavbar()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTemplates.bgClr,
        onPressed: () {},
        child: Container(
            child: Image.asset(
          'assets/icons/keypad.png',
        )),
      ),
      appBar: AppBar(
        title: const Icon(
          CupertinoIcons.line_horizontal_3_decrease,
          color: AppTemplates.txtClr,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Calls',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: AppTemplates.txtClr),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30.w,
                        color: AppTemplates.txtClr,
                      ))
                ],
              ),
            ),
            Divider(
              indent: 20.w,
              endIndent: 20.w,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppTemplates.bgClr,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: EdgeInsets.all(5.w),
                child: Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: AppTemplates.txtClr),
                ),
              ),
            ),
            const Listofemployees()
          ],
        ),
      )),
    );
  }
}
