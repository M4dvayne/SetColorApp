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
    var viewColor: UIColor!
    let sliderTag = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previewColorView.backgroundColor = viewColor
        
        previewColorView.layer.cornerRadius = 15
        
        redColorValueLabel.text = String(redValueSlider.value)
        greenColorValueLabel.text = String(greenValueSlider.value)
        blueColorValueLabel.text = String(blueValueSlider.value)
        
        redColorValueTF.text = String(redValueSlider.value)
        greenColorValueTF.text = String(greenValueSlider.value)
        blueColorValueTF.text = String(blueValueSlider.value)
        
        getSliderValue()
        updateValues(sender: UISlider())
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
        
        delegate.passColor(to: previewColorView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    private func getSliderValue() {
        
        let receivedColor = CIColor(color: viewColor)
        
        redValueSlider.value = Float(receivedColor.red)
        greenValueSlider.value = Float(receivedColor.green)
        blueValueSlider.value = Float(receivedColor.blue)
    }
    
    private func updateValues(sender: UISlider) {
        
        if sliderTag.tag == 0 {
            redColorValueTF.text = String(format: "%.2f",redValueSlider.value)
            redColorValueLabel.text = String(format: "%.2f",redValueSlider.value)
            greenColorValueTF.text = String(format: "%.2f",greenValueSlider.value)
            greenColorValueLabel.text = String(format: "%.2f",greenValueSlider.value)
            blueColorValueTF.text = String(format: "%.2f",blueValueSlider.value)
            blueColorValueLabel.text = String(format: "%.2f",blueValueSlider.value)
        }
    }
}
