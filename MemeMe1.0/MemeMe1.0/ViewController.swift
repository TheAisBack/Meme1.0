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
    @IBOutlet weak var top: UITextField!
    @IBOutlet weak var bottom: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        top.defaultTextAttributes = memeTextAttributes
        bottom.defaultTextAttributes = memeTextAttributes
        top.textAlignment = .center
        bottom.textAlignment = .center
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    @IBAction func pickAnImage(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        self.present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func pickAnImageFromCamera(sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        self.present(imagePicker, animated: true, completion: nil)
    }
    let memeTextAttributes:[String:Any] = [
        NSStrokeColorAttributeName: UIColor.black,
        NSForegroundColorAttributeName: UIColor.white,
        NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
        NSStrokeWidthAttributeName: 3.0,
        ]
}
