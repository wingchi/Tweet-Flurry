//
//  HomeTimelineViewController.swift
//  Tweet Flurry
//
//  Created by Stephen Wong on 1/5/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit
import TwitterKit

class HomeTimelineViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        if let userID = Twitter.sharedInstance().sessionStore.session()?.userID {
            let client = TWTRAPIClient(userID: userID)
            // make requests with client
            self.dataSource = TWTRSearchTimelineDataSource(searchQuery: "#design", APIClient: client)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Tweets"
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
