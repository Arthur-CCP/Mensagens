//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbmessage.text = message.text
        lbmessage.textColor = message.textColor
        lbmessage.backgroundColor = message.backgroundColor

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
    
    
}

extension MessageColorViewController: colorPikerDelegate{
    func applyColor(color:UIColor){
        lbmessage.backgroundColor = color
        message.backgroundColor = color
        
    }
    
}

    


