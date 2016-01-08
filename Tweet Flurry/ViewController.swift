//
//  ViewController.swift
//  Tweet Flurry
//
//  Created by Stephen Wong on 1/5/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    
    @IBAction func loginButtonClicked(sender: AnyObject) {
        Twitter.sharedInstance().logInWithCompletion { session, error in
            if let unwrappedSession = session {
                print("signed in as \(unwrappedSession.userName)");
            } else if let unwrappedError = error {
                print("error: \(unwrappedError.localizedDescription)");
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let logInButton = TWTRLogInButton { (session, error) in
//            if let unwrappedSession = session {
//                let alert = UIAlertController(title: "Logged In",
//                    message: "User \(unwrappedSession.userName) has logged in",
//                    preferredStyle: UIAlertControllerStyle.Alert)
//                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//                self.presentViewController(alert, animated: true, completion: nil)
//            } else {
//                NSLog("Login error: %@", error!.localizedDescription);
//            }
//        }
//        
//        logInButton.center = self.view.center
//        self.view.addSubview(logInButton)
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Login"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

