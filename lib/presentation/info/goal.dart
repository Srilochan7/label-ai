import 'package:flutter/material.dart';
import 'package:label/presentation/info/gender.dart';
import 'package:sizer/sizer.dart';

class Goal extends StatefulWidget {
  const Goal({super.key});

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  String selectedGoal = '';

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
                  "What's your goal ?",
                  style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Center(
                child: Text(
                  "We will calculate daily calories \n according to your goal",
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
                    _buildGoalButton('Lose weight'),
                    SizedBox(height: 2.h),
                    _buildGoalButton('Keep weight'),
                    SizedBox(height: 2.h),
                    _buildGoalButton('Gain weight'),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Gender()));
              }, child: Text("Child"))
            ],
          ),
        );
      }
    );
  }

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
            color: isSelected ? Color(0xFF35CC8C) : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            goal,
            style: TextStyle(
              fontSize: 16.sp,
              color: isSelected ? Color(0xFF35CC8C) : Colors.black,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}