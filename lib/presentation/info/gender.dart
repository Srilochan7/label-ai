import 'package:flutter/material.dart';
import 'package:label/presentation/main_1/home.dart';
import 'package:sizer/sizer.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String selectedGoal = '';

  Widget _buildGoalButton(String goal) {
    bool isSelected = selectedGoal == goal;
    
    return InkWell(
      onTap: () {
        setState(() {
          selectedGoal = goal;
        });
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 2.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFF35CC8C) : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            goal,
            style: TextStyle(
              fontSize: 16.sp,
              color: isSelected ? const Color(0xFF35CC8C) : Colors.black,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              Center(
                child: Text(
                  "What's your gender ?",
                  style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Center(
                child: Text(
                  "Male bodies need more calories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    _buildGoalButton('Male'),
                    SizedBox(height: 2.h),
                    _buildGoalButton('Female'),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Home())
                  );
                },
                
                child: const Text(
                  "Continue",
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}