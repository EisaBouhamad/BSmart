//
//  LessonViewController.swift
//  BSmart
//
//  Created by Eisa Bouhamad on 2/2/15.
//  Copyright (c) 2015 B Company. All rights reserved.
//

import UIKit
import MediaPlayer

class LessonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lessonsToDisplay:[Lesson] = [Lesson]()
        
    var selectedLesson = Lesson()
    
    var z:Int = 0
    
    var MPViewController:MPMoviePlayerViewController?
    
    @IBOutlet weak var lessonTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegation
        self.lessonTableView.delegate = self
        self.lessonTableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return lessonsToDisplay.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Try to reuse a cell
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("LessonBasicCell") as UITableViewCell!
        
        cell.textLabel?.text = lessonsToDisplay[indexPath.row].lessonTitle
        
        return cell
        
    }
    
    
    // When the user select a row
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        selectedLesson = lessonsToDisplay[indexPath.row]
        
        //Trigger the segue to go to the LessonTableViewController
       // self.performSegueWithIdentifier("ToLessonViewController", sender: self)

        
    }
    
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        
        
        //let accessory = lessenWasSelected[indexPath.row]

        
        // Keep track of which course the user selected
        //self.selectedLesson = self.lessenWasSelected[indexPath.row]
    }
    
    @IBAction func playLessonButton(sender: AnyObject) {
        
        let urlToDisplay = selectedLesson.lessonUrl
        
        //movie player
        let movieUrl:NSURL! = NSURL(string: urlToDisplay)
        
        if movieUrl != nil {
            
            self.MPViewController = MPMoviePlayerViewController(contentURL: movieUrl!)
        }
        
        if self.MPViewController != nil {
            self.presentViewController(self.MPViewController!, animated: true, completion: nil)
            
            self.MPViewController!.moviePlayer.play()
            
        }
    }
}

