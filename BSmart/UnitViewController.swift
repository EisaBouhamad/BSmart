//
//  UnitViewController.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 10/18/15.
//  Copyright © 2015 B Company. All rights reserved.
//

import UIKit

class UnitViewController: UITableViewController {
    
    
    var unitsToDisplay:[Unit] = [Unit]()
    
    var lessonsToDisplay:[Lesson] = [Lesson]()
    
    var selectedUnit = Unit()
    
    var courseModel:CourseModel = CourseModel()

    var z:Int = 0

    @IBOutlet weak var unitTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Set the delegation and datasourse for the table view
        self.unitTableView.delegate = self
        self.unitTableView.dataSource = self

        
        // Register the courseTableView cell
        unitTableView.registerNib(UINib(nibName: "UnitTableViewCell", bundle: nil), forCellReuseIdentifier: "UnitCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return unitsToDisplay.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UnitTableViewCell = tableView.dequeueReusableCellWithIdentifier("UnitCell") as! UnitTableViewCell!

        // Configure the cell...
        
        cell.setLabalText(unitsToDisplay[indexPath.row].unitTitle)
        

        return cell
        
        
        
    }
    
    // When the user select a row
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        selectedUnit = unitsToDisplay[indexPath.row]
        
        
        //Trigger the segue to go to the LessonTableViewController
        self.performSegueWithIdentifier("ToLessonViewController", sender: self)
        
    }
    
    
    // Configration the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        // To determine which lesson to choose and return an array of lessons
        func unitWasSelected () -> [Lesson] {
            
            let unitWasSelected = selectedUnit
            
            // All the lessons
            var lessons = [Lesson]()
            
            // Only related lessons to the course
            var unitIsSelected = [Lesson]()
            
            lessons = courseModel.getLesson()
            
            if unitWasSelected.unitNumber == "10.01.000" {
                
                unitIsSelected = [lessons[0],lessons[1],lessons[2],lessons[3],lessons[4],lessons[5],lessons[6]]
                
            } else if unitWasSelected.unitNumber == "10.02.000" {
                
                unitIsSelected = [lessons[7],lessons[8],lessons[9],lessons[10],lessons[11]]
                
            } else if unitWasSelected.unitNumber == "10.03.000" {
                
                unitIsSelected = [lessons[12]]
                
            }
            
            return unitIsSelected
        }
        
        // Call the method to choose which lessons to display
        lessonsToDisplay = unitWasSelected()
        
        if segue.identifier == "ToLessonViewController" {
            
            // Select the segue
            let lessonVC = segue.destinationViewController as! LessonViewController
            
            // Track the selected course and connected to the lesson view controller
            lessonVC.lessonsToDisplay = lessonsToDisplay
            
        }
    }
}
