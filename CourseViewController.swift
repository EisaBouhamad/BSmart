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
    var courseToDisplay = [Unit]()
    
    @IBOutlet weak var courseTableView: UITableView!
    
    override func viewDidLoad() {
                super.viewDidLoad()
                
        // Set the delegation and datasourse for the table view
        self.courseTableView.delegate = self
        self.courseTableView.dataSource = self
        
        
        // Register the courseTableView cell
        //courseTableView.registerClass(CourseTableViewCell.self, forCellReuseIdentifier: "CourseCell")
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
        let cell:CourseTableViewCell = tableView.dequeueReusableCellWithIdentifier("CourseCell") as! CourseTableViewCell
        
        //Set properties, to display each row ....
        
        // Set label text
        cell.setLabelText(courses[indexPath.row].courseTitle)
        
        // Loop through each row and assign color and image to each
        
        var index:Int
        
        for index = 0; index < courses.count ; index++ {
            
            if ((indexPath.row) == index) {
                
                // assign color
                cell.setLabelColor(courses[index].courseColor)
                
                // assign image
                cell.setLabelImage(courses[index].courseImage)
            }
        }
       
  
        // Adding arrows
        // cell.accessoryType = .DetailDisclosureButton
        
        
        // Return the cell
        return cell
    }
    
    

    // When the user select a row
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        selectedCourse = courses[indexPath.row]
        
        //Trigger the segue to go to the LessonTableViewController
        self.performSegueWithIdentifier("ToUnitViewController", sender: self)
        
    }
    
    // Configration the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //if segue.identifier == "course %02d" {  }
        
        // To determine which lesson to choose and return an array of lessons
        func courseWasSelected () -> [Unit] {
            
            let courseWasSelected = selectedCourse
            
            // All the lessons
            var units = [Unit]()
            
            // Only related lessons to the course
            var courseIsSelected = [Unit]()
            
            units = courseModel.getUnit()
            
            if courseWasSelected?.courseNumber == "10.00.000" {
                
                courseIsSelected = [units[0],units[1],units[2]]
                
            } else if courseWasSelected?.courseNumber == "20.00.000" {
                
                courseIsSelected = [units[3],units[4],units[5]]
                
            } else if courseWasSelected?.courseNumber == "30.00.000" {
                
                courseIsSelected = [units[6],units[7],units[8]]
                
            }
            
            return courseIsSelected
        }

        // Call the method to choose which lessons to display
        courseToDisplay = courseWasSelected()
        
        if segue.identifier == "ToUnitViewController" {
            
            // Select the segue
            let unitVC = segue.destinationViewController as! UnitViewController
           
            // Track the selected course and connected to the lesson view controller
            unitVC.unitsToDisplay = courseToDisplay
            
        }
    }
}


