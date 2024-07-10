import 'package:cryptographic_solutions/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Listofemployees extends StatelessWidget {
  const Listofemployees({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: Colors.black,
                      child: ClipOval(
                        child: Image.asset(
                          AppTemplates.images[index],
                          fit: BoxFit.cover,
                          width: 50.w,
                          height: 50.h,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.h,
                      left: 45.w,
                      child: Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white, width: 1.5.w),
                            borderRadius: BorderRadius.circular(5.r),
                            color: index == 3 ? Colors.yellow : Colors.green),
                      ),
                    ),
                  ],
                ),
                horizontalTitleGap: 10.w,
                title: Text(AppTemplates.names[index]),
                subtitle: Text("+91 ${AppTemplates.phoneNumbers[index]}"),
                trailing: Stack(
                  children: [
                    Text(
                      "        ${AppTemplates.timing[index]}",
                      textAlign: TextAlign.center,
                    ),
                    Positioned(
                        child: index == 4
                            ? Icon(
                                CupertinoIcons.phone_arrow_up_right,
                                color: Colors.red,
                                size: 15.w,
                              )
                            : Icon(
                                CupertinoIcons.phone_arrow_down_left,
                                color: Colors.green,
                                size: 15.w,
                              )),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              )
            ],
          );
        },
      ),
    );
  }
}
