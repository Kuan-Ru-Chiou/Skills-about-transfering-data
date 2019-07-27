//
//  EditViewController.swift
//  Unwidtosegue
//
//  Created by 邱冠儒 on 2019/6/29.

//

import UIKit

class EditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var addNewfriend: UITextField!
    
    var newfriend: String?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        
        if let Newfriend = addNewfriend.text {
               newfriend = Newfriend
        }
        print("good")    }
    
    
    
}
