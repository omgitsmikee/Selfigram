//
//  ActivityViewController.swift
//  Selfigram
//
//  Created by Michael Mak on 2016-09-27.
//  Copyright © 2016 Michael Mak. All rights reserved.
//

import UIKit

class ActivityViewController: UITableViewController {

    var activities = [Activity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        if let query = Activity.query() {
            query.orderByDescending("createdAt")
            // we need to get the details inside user (like username). so we include it in this query
            query.includeKey("user")
            // ditto for post.user to get the username of the user that submitted the post.
            query.includeKey("post.user")
            query.findObjectsInBackgroundWithBlock({ (activities, error) -> Void in
                
                if let activities = activities as? [Activity]{
                    // update our array with new data from Parse
                    self.activities = activities
                    // reload the table view so new content shows
                    self.tableView.reloadData()
                }
                
            })
        }
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath)
        
        // get the specific activity we should configure based on where we are (indexPath.row)
        let activity = activities[indexPath.row]

        // get info on the liker and the userBeingLiked
        if let liker = activity.user.username,
            userBeingliked = activity.post.user.username {
            cell.textLabel?.text = "❤️" + " \(liker) liked \(userBeingliked)'s photo"
        }
        
        return cell
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
