//
//  ViewController.swift
//  SegueApp
//
//  Created by Aleyna Yerlikaya on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //kullanıcı görecek
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //kullanıcı gördü
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //örneğin başka sayfaya geçecek ekran gidiyor bilgisi veriyor
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //başka sayfaya geçti ekran gitti
    }
    
    
   
    
    
    
    
    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }

}

