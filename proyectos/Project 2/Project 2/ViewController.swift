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
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "italy", "monaco", "nigeria", "poland", "rueeia", "spain", "uk", "us"]
        
        Button1.layer.borderWidth = 1
        Button2.layer.borderWidth = 1
        Button3.layer.borderWidth = 1
        
        Button1.layer.borderColor = UIColor.lightGray.cgColor
        Button2.layer.borderColor = UIColor.lightGray.cgColor
        Button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestin(action: nil)
        /// En el  `viewDidLoad()`, si la pregunta `askQuestin(action: UIAlertAction! = nil)`,
        ///  la llamada sería ` askQuestin()`
    }
    /// # askQuestin(action: UIAlertAction! = nil) ->
    ///*** esta opcion dentro del parametro le pasa nil por defecto si no hay
    ///una acion de alerta
    func askQuestin(action: UIAlertAction!) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        Button1.setImage(UIImage(named: countries[0]), for: .normal)
        Button2.setImage(UIImage(named: countries[1]), for: .normal)
        Button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }
    
    /// # Acción de botones: -> los tres apuntan al mismo metodo
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer{
            title = "Correct"
            score += 1
        }else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "You score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestin))
        present(ac, animated: true)
    }
    
}

