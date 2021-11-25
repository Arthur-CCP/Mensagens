//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Mac on 25/11/2021.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    
    @IBOutlet weak var lbmessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(_ sender: UIButton){
        if let reference = self as? colorPikerDelegate {
            let colorPiker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPiker.modalPresentationStyle = .overCurrentContext  //mantém a tela em background
            colorPiker.delegate = reference
            present(colorPiker, animated: true, completion: nil)
        }
        
    }

}
