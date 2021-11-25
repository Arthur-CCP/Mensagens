//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
   
    
    
}

extension MessageViewController: UITextFieldDelegate {//extende classe MessageViewController e implementa o protocolo UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        message.text = textField.text!
        lbmessage.text = textField.text!
        textField.resignFirstResponder()
        return true
        
    }
    
}

extension MessageViewController: colorPikerDelegate{
    
    func applyColor(color: UIColor){
        lbmessage.textColor = color
        message.textColor = color
        
    }
    
}
