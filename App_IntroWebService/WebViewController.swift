//
//  WebViewController.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    
    @IBOutlet weak var myTittleUrl: UILabel!
    var urlString : String?
    
    
    @IBOutlet weak var myWebView: UIWebView!
    
    @IBAction func closeWeb(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print("http://www.\(urlString!)")
        
        let customUrl = URL(string: "http://www.\(urlString!)")
        let request = URLRequest(url: customUrl!)
        myWebView.loadRequest(request)
        
        myTittleUrl.text = "http://www.\(urlString!)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
