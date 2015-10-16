//
//  CourseModel.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 1/28/15.
//  Copyright (c) 2015 B Company. All rights reserved.


import UIKit

class CourseModel: NSObject {
    
    
    /*
    // To return an array of logo images
    func logos () ->UIImage {
        
        var Images : [UIImage] = [UIImage]()
        
        let math_logo:UIImage = UIImage(named:"Math_logo.jpg")!
        
        return logos()
        
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
    
        
        
        course1.courseNumber = 100
        course1.courseTitle = "الرياضيات"
        course1.courseImage = UIImage(named:"Math_logo.jpg")!
        course1.courseColor = UIColor.brownColor()
        courses.append(course1)
        
        course2.courseNumber = 200
        course2.courseTitle = "الفيزياء"
        course2.courseImage = UIImage(named:"Physics_logo.jpg")!
        course2.courseColor = UIColor.cyanColor()
        courses.append(course2)
        
        
        course3.courseNumber = 300
        course3.courseTitle = "الكيمياء"
        course3.courseImage = UIImage(named:"Chemistry_logo.jpeg")!
        course3.courseColor = UIColor.magentaColor()
        courses.append(course3)
        
        course4.courseNumber = 400
        course4.courseTitle = "الاحياء"
        course4.courseImage = UIImage(named:"Bio_logo.jpg")!
        course4.courseColor = UIColor.purpleColor()
        courses.append(course4)
        
        course5.courseNumber = 500
        course5.courseTitle = "الاحصاء"
        course5.courseImage = UIImage(named:"Stat_logo.jpeg")!
        course5.courseColor = UIColor.grayColor()
        courses.append(course5)
        
        course6.courseNumber = 600
        course6.courseTitle = "جغرافيا"
        course6.courseImage = UIImage(named:"Geo_logo.jpeg")!
        course6.courseColor = UIColor.orangeColor()
        courses.append(course6)

        return courses
    }
    
    // To return an array of lessons
    func getLesson () ->[Lesson] {
        
        var lessons:[Lesson] = [Lesson]()

        // Array of course objects
        
        let lesson101:Lesson = Lesson()
        let lesson102:Lesson = Lesson()
        let lesson103:Lesson = Lesson()
        let lesson201:Lesson = Lesson()
        let lesson202:Lesson = Lesson()
        let lesson203:Lesson = Lesson()
        let lesson301:Lesson = Lesson()
        let lesson302:Lesson = Lesson()
        let lesson303:Lesson = Lesson()
        
        lesson101.lessonTitle = "lesson 1.1"
        lesson101.lesssonImage = "image 1.1"
        lesson101.lessonUrl = "https://www.youtube.com/watch?v=r_OO11QYrPg"
        lessons.append(lesson101)
        
        lesson102.lessonTitle = "lesson 1.2"
        lesson102.lesssonImage = "image 1.2"
        lesson102.lessonUrl = "https://www.youtube.com/watch?v=DaMhY8uvUWE"
        lessons.append(lesson102)
        
        lesson103.lessonTitle = "lesson 1.3"
        lesson103.lesssonImage = "image 1.3"
        lesson103.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson103)
        
        lesson201.lessonTitle = "lesson 2.1"
        lesson201.lesssonImage = "image 2.1"
        lesson201.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson201)
        
        lesson202.lessonTitle = "lesson 2.2"
        lesson202.lesssonImage = "image 2.2"
        lesson202.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson202)
        
        lesson203.lessonTitle = "lesson 2.3"
        lesson203.lesssonImage = "image 2.3"
        lesson203.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson203)
        
        lesson301.lessonTitle = "lesson 3.1"
        lesson301.lesssonImage = "image 3.1"
        lesson301.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson301)
        
        lesson302.lessonTitle = "lesson 3.2"
        lesson302.lesssonImage = "image 3.2"
        lesson302.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson302)
        
        lesson303.lessonTitle = "lesson 3.3"
        lesson303.lesssonImage = "image 3.3"
        lesson303.lessonUrl = "http://techslides.com/demos/sample-videos/small.mp4"
        lessons.append(lesson303)
        
        return lessons
    }
    
    
    func getCourseColor () {
        

        
    }

        
}
