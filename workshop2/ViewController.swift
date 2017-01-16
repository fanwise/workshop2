//
//  ViewController.swift
//  workshop2
//
//  Created by Wei Fan on 1/16/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sendHttpRequest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func sendHttpRequest(){
        let request = UserRequest(name: "onevcat")
        URLSessionClient().send(request) { user in
            if let user = user {
                print("\(user.message) from \(user.name)")
            }
        }
    }

}

