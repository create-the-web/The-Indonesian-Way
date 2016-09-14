import UIKit

class ModulesTableViewController: UITableViewController {
    var course = Course()    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return course.modules.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return course.modules[section].lessons.count
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return course.modules[section].title
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Lesson", forIndexPath: indexPath)
        let lesson = course.modules[indexPath.section].lessons[indexPath.row]
        
        cell.textLabel?.text = lesson.title
        cell.detailTextLabel?.text = lesson.description
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let lessonController = segue.destinationViewController.contentViewController as? LessonViewController {
            let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
            lessonController.lesson = course.modules[indexPath.section].lessons[indexPath.row]
        }
    }
}