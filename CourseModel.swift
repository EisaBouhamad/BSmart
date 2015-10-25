//
//  CourseModel.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 1/28/15.
//  Copyright (c) 2015 B Company. All rights reserved.



//  lesson ID will be xx.xx.xx.xxx
//  first xx to the left  = Level number
//  second xx             = Course number
//  third xx              = Unit number
//  fourth xxx            = Lesson number


import UIKit

class CourseModel: NSObject {
    
    
    func getExam () ->[String:Course] {
        
        var exams:[String:Course] = [String:Course]()

        let exam1:Course = Course()
        
        
        exam1.courseNumber = "10.00.000"
        exam1.courseTitle = "الرياضيات"
        exam1.courseImage = UIImage(named:"Math_logo.jpg")!
        exam1.courseColor = UIColor.brownColor()
        exams["10.00.000"] = exam1
        
        
        let exam2:Course = Course()
        
        
        exam2.courseNumber = "20.00.000"
        exam2.courseTitle = "الفيزياء"
        exam2.courseImage = UIImage(named:"Physics_logo.jpg")!
        exam2.courseColor = UIColor.cyanColor()
        exams["20.00.000"] = exam2

        
        
        
        return exams
    }
        
        
/*
    }
    // To return an array of courses
    func getCourse () ->[String:Course] {
        
        
        var courses:[String:Course] = [String:Course]()
        
        // Array of course objects
        let course1:Course = Course()
        let course2:Course = Course()
        let course3:Course = Course()
        let course4:Course = Course()
        let course5:Course = Course()
        let course6:Course = Course()
        
        course1.courseNumber = "10.00.000"
        course1.courseTitle = "الرياضيات"
        course1.courseImage = UIImage(named:"Math_logo.jpg")!
        course1.courseColor = UIColor.brownColor()
        courses["10.00.000"] = course1
        
        course2.courseNumber = "20.00.000"
        course2.courseTitle = "الفيزياء"
        course2.courseImage = UIImage(named:"Physics_logo.jpg")!
        course2.courseColor = UIColor.cyanColor()
        courses["20.00.000"] = course2
        
        course3.courseNumber = "30.00.000"
        course3.courseTitle = "الكيمياء"
        course3.courseImage = UIImage(named:"Chemistry_logo.jpeg")!
        course3.courseColor = UIColor.magentaColor()
        courses["30.00.000"] = course3
        
        course4.courseNumber = "40.00.000"
        course4.courseTitle = "الاحياء"
        course4.courseImage = UIImage(named:"Bio_logo.jpg")!
        course4.courseColor = UIColor.purpleColor()
        courses["40.00.000"] = course4
        
        course5.courseNumber = "50.00.000"
        course5.courseTitle = "الاحصاء"
        course5.courseImage = UIImage(named:"Stat_logo.jpeg")!
        course5.courseColor = UIColor.grayColor()
        courses["50.00.000"] = course5
        
        course6.courseNumber = "60.00.000"
        course6.courseTitle = "جغرافيا"
        course6.courseImage = UIImage(named:"Geo_logo.jpeg")!
        course6.courseColor = UIColor.orangeColor()
        courses["60.00.000"] = course6
        
        return courses
    }
*/

    // To return an array of courses
    func getCourse () ->[Course] {
        
        
        var courses:[Course] = [Course]()

        // Array of course objects
        let course1:Course = Course()
        let course2:Course = Course()
        let course3:Course = Course()
        let course4:Course = Course()
        let course5:Course = Course()
        let course6:Course = Course()
    
        
        
        course1.courseNumber = "10.00.000"
        course1.courseTitle = "الرياضيات"
        course1.courseImage = UIImage(named:"Math_logo.jpg")!
        course1.courseColor = UIColor.brownColor()
        courses.append(course1)
        
        course2.courseNumber = "20.00.000"
        course2.courseTitle = "الفيزياء"
        course2.courseImage = UIImage(named:"Physics_logo.jpg")!
        course2.courseColor = UIColor.cyanColor()
        courses.append(course2)
        
        course3.courseNumber = "30.00.000"
        course3.courseTitle = "الكيمياء"
        course3.courseImage = UIImage(named:"Chemistry_logo.jpeg")!
        course3.courseColor = UIColor.magentaColor()
        courses.append(course3)
        
        course4.courseNumber = "40.00.000"
        course4.courseTitle = "الاحياء"
        course4.courseImage = UIImage(named:"Bio_logo.jpg")!
        course4.courseColor = UIColor.purpleColor()
        courses.append(course4)
        
        course5.courseNumber = "50.00.000"
        course5.courseTitle = "الاحصاء"
        course5.courseImage = UIImage(named:"Stat_logo.jpeg")!
        course5.courseColor = UIColor.grayColor()
        courses.append(course5)
        
        course6.courseNumber = "60.00.000"
        course6.courseTitle = "جغرافيا"
        course6.courseImage = UIImage(named:"Geo_logo.jpeg")!
        course6.courseColor = UIColor.orangeColor()
        courses.append(course6)

        return courses
    }


    // To return an array of units
    func getUnit () ->[Unit] {
        
        var units:[Unit] = [Unit]()
        
        // Array of units objects
        
        let unit101:Unit = Unit()
        let unit102:Unit = Unit()
        let unit103:Unit = Unit()
        let unit201:Unit = Unit()
        let unit202:Unit = Unit()
        let unit203:Unit = Unit()
        let unit301:Unit = Unit()
        let unit302:Unit = Unit()
        let unit303:Unit = Unit()
        
        unit101.unitNumber = "10.01.000"
        unit101.unitTitle = "النهايات والاتصال"
        unit101.unitImage = "image 1.1"
        units.append(unit101)
        
        unit102.unitNumber = "10.02.000"
        unit102.unitTitle = "الاشتقاق"
        unit102.unitImage = "image 1.2"
        units.append(unit102)

        unit103.unitNumber = "10.03.000"
        unit103.unitTitle = "تطبيقات هندسية ورياضية"
        unit103.unitImage = "image 1.3"
        units.append(unit103)
        
        unit201.unitNumber = "20.01.000"
        unit201.unitTitle = "unit 2.1"
        unit201.unitImage = "image 2.1"
        units.append(unit201)
        
        unit202.unitNumber = "20.02.000"
        unit202.unitTitle = "unit 2.2"
        unit202.unitImage = "image 2.2"
        units.append(unit202)
        
        unit203.unitNumber = "20.03.000"
        unit203.unitTitle = "unit 2.3"
        unit203.unitImage = "image 2.3"
        units.append(unit203)
        
        unit301.unitNumber = "30.01.000"
        unit301.unitTitle = "unit 3.1"
        unit301.unitImage = "image 3.1"
        units.append(unit301)
        
        unit302.unitNumber = "30.02.000"
        unit302.unitTitle = "unit 3.2"
        unit302.unitImage = "image 3.2"
        units.append(unit302)
        
        unit303.unitNumber = "30.03.000"
        unit303.unitTitle = "unit 3.3"
        unit303.unitImage = "image 3.3"
        units.append(unit303)
        
        return units
    }

    // To return an array of lessons
    func getLesson () ->[Lesson] {
        
        var lessons:[Lesson] = [Lesson]()
        
        // Array of course objects
        
        let lesson10101:Lesson = Lesson()
        let lesson10102:Lesson = Lesson()
        let lesson10103:Lesson = Lesson()
        let lesson10104:Lesson = Lesson()
        let lesson10105:Lesson = Lesson()
        let lesson10106:Lesson = Lesson()
        let lesson10107:Lesson = Lesson()
        
        let lesson10201:Lesson = Lesson()
        let lesson10202:Lesson = Lesson()
        let lesson10203:Lesson = Lesson()
        let lesson10204:Lesson = Lesson()
        let lesson10205:Lesson = Lesson()

        
        let lesson10301:Lesson = Lesson()
        let lesson10302:Lesson = Lesson()
        let lesson10303:Lesson = Lesson()
        
        lesson10101.lessonNumber = "10.01.001"
        lesson10101.lessonTitle = "نهاية الدالة عند نقطة"
        lesson10101.lesssonImage = "image 1.1"
        lesson10101.lessonUrl = "https://www.youtube.com/watch?v=r_OO11QYrPg"
        lessons.append(lesson10101)
        
        lesson10102.lessonNumber = "10.01.002"
        lesson10102.lessonTitle = " نهايات تشتمل على - ∞ ,+ ∞"
        lesson10102.lesssonImage = "image 1.2"
        lesson10102.lessonUrl = "https://www.youtube.com/watch?v=DaMhY8uvUWE"
        lessons.append(lesson10102)
        
        lesson10103.lessonNumber = "10.01.003"
        lesson10103.lessonTitle = "الصيغ غير المعينة"
        lesson10103.lesssonImage = "image 1.3"
        lesson10103.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10103)
        
        lesson10104.lessonNumber = "10.01.004"
        lesson10104.lessonTitle = "اتصال دالة عند نقطة"
        lesson10104.lesssonImage = "image 1.3"
        lesson10104.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10104)
        
        lesson10105.lessonNumber = "10.01.005"
        lesson10105.lessonTitle = "نظريات الاتصال"
        lesson10105.lesssonImage = "image 1.3"
        lesson10105.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10105)
        
        lesson10106.lessonNumber = "10.01.006"
        lesson10106.lessonTitle = "الاتصال على فتره"
        lesson10106.lesssonImage = "image 1.3"
        lesson10106.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10106)
        
        lesson10107.lessonNumber = "10.01.007"
        lesson10107.lessonTitle = "ملخص وتمارين عامة"
        lesson10107.lesssonImage = "image 1.3"
        lesson10107.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10107)
        
        
        
        lesson10201.lessonNumber = "10.02.001"
        lesson10201.lessonTitle = "المشتقة"
        lesson10201.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10201)
        
        lesson10202.lessonNumber = "10.02.002"
        lesson10202.lessonTitle = "قواعد أساسية لإيجاد المشتقة"
        lesson10202.lesssonImage = "image 2.2"
        lesson10202.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10202)
        
        lesson10203.lessonNumber = "10.02.003"
        lesson10203.lessonTitle = "قواعد إضافية لإيجاد المشتقة"
        lesson10203.lesssonImage = "image 2.3"
        lesson10203.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10203)
        
        lesson10204.lessonNumber = "10.02.003"
        lesson10204.lessonTitle = "قاعدة التسلسل وتعميم قاعدة القوى"
        lesson10204.lesssonImage = "image 2.3"
        lesson10204.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10204)

        lesson10205.lessonNumber = "10.02.003"
        lesson10205.lessonTitle = "الاشتقاق الضمني"
        lesson10205.lesssonImage = "image 2.3"
        lesson10205.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10205)

        
        
        
        lesson10301.lessonNumber = "10.03.001"
        lesson10301.lessonTitle = "قاعدة التسلسل وتعميم قاعدة القوى"
        lesson10301.lesssonImage = "image 3.1"
        lesson10301.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10301)
        
        lesson10302.lessonNumber = "10.03.002"
        lesson10302.lesssonImage = "الاشتقاق الضمني"
        lesson10302.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10302)
        
        lesson10303.lessonNumber = "10.03.003"
        lesson10303.lesssonImage = "image 3.3"
        lesson10303.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson10303)
        
        return lessons
    }

    
        
}
