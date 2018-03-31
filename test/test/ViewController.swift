//
//  ViewController.swift
//  test
//
//  Created by Son Nguyen on 3/31/18.
//  Copyright © 2018 Son Nguyen. All rights reserved.
//

import UIKit
import OLEModalStatus


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapped(_ sender: Any) {
        self.presentModalStatusView()
    }
    
    func presentModalStatusView() {
        let modalView = OLEModalStatusView(frame: self.view.bounds)
        let downloadImage = UIImage(named: "download") ?? UIImage()
        modalView.set(image: downloadImage)
        modalView.set(headline: "Downloading")
        view.addSubview(modalView)
    }
    
}

