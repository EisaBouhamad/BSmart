//
//  CourseViewController.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 1/25/15.
//  Copyright (c) 2015 B Company. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var courses:[Course] = [Course]()
    var courseModel:CourseModel = CourseModel()
    var selectedCourse:Course?
    var courseToDisplay = [Lesson]()
    
    @IBOutlet weak var courseTableView: UITableView!
    
    override func viewDidLoad() {
                super.viewDidLoad()
                
        // Set the delegation and datasourse for the table view
        self.courseTableView.delegate = self
        self.courseTableView.dataSource = self
        
        
        // Register the courseTableView cell
        courseTableView.registerClass(CourseTableViewCell.self, forCellReuseIdentifier: "CourseCell")
        courseTableView.registerNib(UINib(nibName: "CourseTableViewCell", bundle: nil), forCellReuseIdentifier: "CourseCell")
        
        
        // call the getcourse method to creat a courses objects
        courses = courseModel.getCourse()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    // Number of row in the table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return courses.count
    }
    
    // Setup the cell details
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        // Try to get a cell to use
        let cell:CourseTableViewCell = tableView.dequeueReusableCellWithIdentifier("CourseCell") as! CourseTableViewCell!
        
        
        //Set properties, to display each row ....
        
        // Set label text
        cell.setLabelText(courses[indexPath.row].courseTitle)
        
        // set label color
        //cell.setLabelColor(courses[indexPath.row].courseColor)
        
        // Adding arrows
        //cell.accessoryType = .DetailDisclosureButton
        
        // Return the cell
        return cell
    }
    

    // When the user select a row
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        selectedCourse = courses[indexPath.row]
        
        //Trigger the segue to go to the LessonTableViewController
        self.performSegueWithIdentifier("ToLessonViewController", sender: self)
        
    }
    
    // Configration the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //if segue.identifier == "course %02d" {  }
        
        // To determine which lesson to choose and return an array of lessons
        func courseWasSelected () -> [Lesson] {
            
            let courseWasSelected = selectedCourse
            
            // All the lessons
            var lessons = [Lesson]()
            
            // Only related lessons to the course
            var courseIsSelected = [Lesson]()
            
            lessons = courseModel.getLesson()
            
            if courseWasSelected?.courseNumber == 100 {
                
                courseIsSelected = [lessons[0],lessons[1],lessons[2]]
                
            } else if courseWasSelected?.courseNumber == 200 {
                
                courseIsSelected = [lessons[3],lessons[4],lessons[5]]
                
            } else if courseWasSelected?.courseNumber == 300 {
                
                courseIsSelected = [lessons[6],lessons[7],lessons[8]]
                
            }
            
            return courseIsSelected
        }

        // Call the method to choose wich lessons to display
        courseToDisplay = courseWasSelected()
        

        if segue.identifier == "ToLessonViewController" {
            
            // Select the segue
            let lessonVC = segue.destinationViewController as! LessonViewController
           
            // Track the selected course and connected to the lesson view controller
            lessonVC.lessonsToDisplay = courseToDisplay
            
        }
    }
}
