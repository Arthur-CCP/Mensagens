//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Mac on 25/11/2021.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

protocol colorPikerDelegate: class{
    func applyColor(color: UIColor)
    
}

class ColorPickerViewController: UIViewController {


    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var SlRed: UISlider!
    @IBOutlet weak var SlGreen: UISlider!
    @IBOutlet weak var SlBlue: UISlider!
    
    weak var delegate: colorPikerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(color: viColor.backgroundColor!)
        
    }
    @IBAction func ChangeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(SlRed.value), green: CGFloat(SlGreen.value), blue: CGFloat(SlBlue.value), alpha: 1.0)
    }
    
}
