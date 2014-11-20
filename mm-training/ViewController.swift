//
//  ViewController.swift
//  mm-training
//
//  Created by Raymunfil Anxa on 11/19/14.
//  Copyright (c) 2014 Anxa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var navTitle: UIImageView!
    //@IBOutlet weak var navLabel: UILabel!
    
    @IBOutlet weak var navLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //navTitle.backgroundColor = colorWithHexString("#334478")
        //navLabel.backgroundColor = colorWithHexString("#334478")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func colorWithHexString (hex:String) -> UIColor {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(advance(cString.startIndex, 1))
        }
        
        if (countElements(cString) != 6) {
            return UIColor.grayColor()
        }
        
        var rgbValue:UInt32 = 0
        NSScanner(string: cString).scanHexInt(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    @IBAction func parcoursButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        
        wvController.urlString = "http://methode-montignac.aujourdhui.com/5minparjour/mobile/inapp/parcoursminceur"
        self.navigationController?.pushViewController(wvController, animated: true)
    }
    @IBAction func planButtonPressed(sender: UIButton) {
        
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/menus.asp?ver=2"
        
        self.navigationController?.pushViewController(wvController, animated: true)
        
       
        
    }
    @IBAction func courbeButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/courbe-de-poids.asp?ver=2"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    }
    @IBAction func sessionButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/accueil.asp"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    }
    @IBAction func alacarteButtonPressed(sender: UIButton) {
        
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/videos-autres.asp"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    }
    @IBAction func dietitianButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/carnet.asp"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    
    }
    
    @IBAction func forumsButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/forum-amis.asp"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    }
    @IBAction func groupsButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/groupes"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    }
    @IBAction func successButtonPressed(sender: UIButton) {
        let wvController = self.storyboard?.instantiateViewControllerWithIdentifier("WebViewController") as WebViewController
        wvController.urlString = "http://methode-montignac.aujourdhui.com/iphone/compte/temoignages-2014.asp"
        
        
        self.navigationController?.pushViewController(wvController, animated: true)
    }
}

