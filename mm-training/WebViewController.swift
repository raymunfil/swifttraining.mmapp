//
//  WebViewController.swift
//  mm-training
//
//  Created by Raymunfil Anxa on 11/19/14.
//  Copyright (c) 2014 Anxa. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    var urlString:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let requestURL = NSURL(string: urlString)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
