//
//  Download.swift
//  CustomDelegateTest
//
//  Created by Chhaileng Peng on 7/21/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import Foundation

protocol DownloadDelegate {
    func didFinishDownload(message: String)
}

class Download {
    
    var delegate: DownloadDelegate?
    
    func start() {
        print("Downloading...")
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(downloadComplete), userInfo: nil, repeats: false)
    }
    
    @objc func downloadComplete() {
        print("Completed")
        delegate?.didFinishDownload(message: "Completed")
    }
    
}
