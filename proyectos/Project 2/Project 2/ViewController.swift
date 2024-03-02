//
//  ViewController.swift
//  Project 2
//
//  Created by Esteban Perez Castillejo on 2/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    
    var contries = [String]()
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contries += ["estonia", "france", "germany", "italy", "monaco", "nigeria", "poland", "rueeia", "spain", "uk", "us"]
        
        Button1.layer.borderWidth = 1
        Button2.layer.borderWidth = 1
        Button3.layer.borderWidth = 1
        
        Button1.layer.borderColor = UIColor.lightGray.cgColor
        Button2.layer.borderColor = UIColor.lightGray.cgColor
        Button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestin()
    }
    
    func askQuestin() {
        Button1.setImage(UIImage(named: contries[0]), for: .normal)
        Button2.setImage(UIImage(named: contries[1]), for: .normal)
        Button3.setImage(UIImage(named: contries[2]), for: .normal)
    }

}

