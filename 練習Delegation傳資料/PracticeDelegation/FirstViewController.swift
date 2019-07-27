//
//  FirstViewController.swift
//  PracticeDelegation
//
//  Created by 邱冠儒 on 2019/6/29.

//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var tel: UILabel!
    
    
    //Navigation to secodViewController for use his delegate attribute
    @IBAction func actionDetail(_ sender: UIButton) {

        // 1. produce SeconviewController
        guard let secondView = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
        fatalError("View Controller can not be found")
    }
        
        //2. FirstViewController reference to SecondViewcontroller delegate attribute
        secondView.delegate = self
        //3. navigation to the view of secodviewcontroller
        navigationController?.pushViewController(secondView, animated: true)
        
    }
        
    
    
    
    
}


//Mark Protocal delegation method

extension FirstViewController: TransTexwordDelegate{
    
    func textTransName(_ text: String) {
        print(text)
        name.text = " Name: \(text)"
    }
    
    
    
    func textTransTel(_ text: String) {
        print(text)
        tel.text = " Tel: \(text)"
    }
    
    
    
}



