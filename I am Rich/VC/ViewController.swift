//
//  ViewController.swift
//  I am Rich
//
//  Created by Fernanda Perovano on 18/06/24.
//

import UIKit

class ViewController: UIViewController {

    var vcScreen: VCScreen?
    
    override func loadView() {
        self.vcScreen = VCScreen()
        self.view = self.vcScreen
    }
}

