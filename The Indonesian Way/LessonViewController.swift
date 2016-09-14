//
//  LessonTableViewController.swift
//  The Indonesian Way
//
//  Created by Kai Patrick Jung on 28.08.16.
//  Copyright © 2016 Kai Patrick Jung. All rights reserved.
//

import UIKit

class LessonViewController: UITableViewController {
    var lesson : Lesson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = lesson!.title
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return lesson!.subLessons.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesson!.subLessons[section].units.count
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return lesson!.subLessons[section].title
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Unit", forIndexPath: indexPath) as UITableViewCell!

        let unit  = lesson!.subLessons[indexPath.section].units[indexPath.row]
        cell.textLabel?.text = unit.audioNames[0]
        cell.detailTextLabel?.text = unit.title
    
        return cell
    }    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let unitViewController = segue.destinationViewController.contentViewController as? UnitViewController {
            let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
            unitViewController.unit = lesson!.subLessons[indexPath.section].units[indexPath.row]
        }
    }
}
