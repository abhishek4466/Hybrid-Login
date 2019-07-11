//
//  ViewController.swift
//  HybridLogin
//
//  Created by Abhishek Tyagi on 7/11/19.
//  Copyright © 2019 Abhishek Tyagi. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    

    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        dismiss(animated: true)
    }

    @IBAction func loginButtonClicked(_ sender: Any) {
        let urlString = "http://localhost:8082/"
        if let url = URL(string: urlString) {
            let svc = SFSafariViewController(url: url)
            svc.delegate = self
            present(svc, animated: true)
        }
    }
}

