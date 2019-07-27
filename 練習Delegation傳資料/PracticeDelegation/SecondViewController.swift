//
//  SecondViewController.swift
//  PracticeDelegation
//
//  Created by 邱冠儒 on 2019/6/29.
/
//

import UIKit


//Mark Protocal
protocol TransTexwordDelegate: AnyObject {
    func textTransName(_ text: String)
    func textTransTel(_ text: String)
    
}



class SecondViewController: UIViewController {

    
    weak var delegate: TransTexwordDelegate?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var textTel: UITextField!
    
    
    
    // Pass the data to firstviewcontroller using delagation
    @IBAction func actionDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.delegate?.textTransName(textName.text ?? "")
        self.delegate?.textTransTel(textTel.text ?? "")
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
