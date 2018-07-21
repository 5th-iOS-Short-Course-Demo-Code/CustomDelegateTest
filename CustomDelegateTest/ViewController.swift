//
//  ViewController.swift
//  CustomDelegateTest
//
//  Created by Chhaileng Peng on 7/21/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DownloadDelegate {
    
    func didFinishDownload(message: String) {
        statusLabel.text = "Status: \(message)"
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func downloadClick(_ sender: UIButton) {
        statusLabel.text = "Status: Downloading..."
        let download = Download()
        download.start()
        download.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

