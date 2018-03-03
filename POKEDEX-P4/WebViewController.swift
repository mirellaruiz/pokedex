//
//  WebViewController.swift
//  POKEDEX-P4
//
//  Created by María Ortega on 08/11/2017.
//  Copyright © 2017 María Ortega. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    var race: Race?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = "http://es.pokemon.wikia.com"
        if let path = "wiki/\(race!.name.description)".addingPercentEncoding(withAllowedCharacters: .urlPathAllowed){
            url = "\(url)/\(path)"
        }
        let surl = URL(string: url)
        let req = URLRequest(url: surl!)
        webView.loadRequest(req)
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
