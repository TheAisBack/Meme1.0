//
//  ViewController.swift
//  MemeMe1.0
//
//  Created by Alan Joseph Hekle on 2017-07-09.
//  Copyright © 2017 Alan Joseph Hekle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imagePickerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pickAnImage(_ sender: Any) {
        let pickerController = UIImagePickerController()
        self.present(pickerController, animated: true, completion: nil)
    }
}
