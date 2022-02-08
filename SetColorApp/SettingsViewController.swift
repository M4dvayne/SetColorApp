//
//  SettingsViewController.swift
//  SetColorApp
//
//  Created by Вячеслав Кремнев on 2/6/22.
//

import UIKit


class SettingsViewController: UIViewController {

    @IBOutlet weak var previewColorView: UIView!
    
    @IBOutlet weak var redColorValueLabel: UILabel!
    @IBOutlet weak var greenColorValueLabel: UILabel!
    @IBOutlet weak var blueColorValueLabel: UILabel!
    
    @IBOutlet weak var redColorValueTF: UITextField!
    @IBOutlet weak var greenColorValueTF: UITextField!
    @IBOutlet weak var blueColorValueTF: UITextField!
    
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var blueValueSlider: UISlider!
    
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previewColorView.layer.cornerRadius = 15
        
        redColorValueLabel.text = String(redValueSlider.value)
        greenColorValueLabel.text = String(greenValueSlider.value)
        blueColorValueLabel.text = String(blueValueSlider.value)
        
        redColorValueTF.text = String(redValueSlider.value)
        greenColorValueTF.text = String(greenValueSlider.value)
        blueColorValueTF.text = String(blueValueSlider.value)
    }
    
    @IBAction func rgbSetSliders(_ sender: UISlider) {
        
        previewColorView.backgroundColor = UIColor(
            red: CGFloat(redValueSlider.value),
            green: CGFloat(greenValueSlider.value),
            blue: CGFloat(blueValueSlider.value),
            alpha:1.0
        )
        
        redColorValueLabel.text = String(format: "%.2f", redValueSlider.value)
        greenColorValueLabel.text = String(format: "%.2f", greenValueSlider.value)
        blueColorValueLabel.text = String(format: "%.2f", blueValueSlider.value)
        
        redColorValueTF.text = String(format: "%.2f", redValueSlider.value)
        greenColorValueTF.text = String(format: "%.2f", greenValueSlider.value)
        blueColorValueTF.text = String(format: "%.2f", blueValueSlider.value)
    }
    
    @IBAction func saveColorButton() {
        
       // delegate.setRgbValue(for: ??)
        
        dismiss(animated: true)
        
    }
    
}
