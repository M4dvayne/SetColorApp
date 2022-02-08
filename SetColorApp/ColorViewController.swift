//
//  ViewController.swift
//  SetColorApp
//
//  Created by Вячеслав Кремнев on 2/6/22.
//

import UIKit

protocol SettingsViewControllerDelegate {
    
    func setRgbValue(for mainColorizedView: UIView) // Корректен ли тип параметра?
}

class ColorViewController: UIViewController {

    
    @IBOutlet weak var mainColorizedView: UIView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let navigationVC = segue.destination as? UINavigationController else {return}
        guard let settingVC = navigationVC.topViewController as? SettingsViewController else {return}
        settingVC.previewColorView.backgroundColor = mainColorizedView.backgroundColor
        //Передать значения rgb в слайдеры, лейблы и текстовые поля.
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ColorViewController: SettingsViewControllerDelegate {
    
    func setRgbValue(for mainColorizedView: UIView) {
        
        //mainColorizedView.backgroundColor = ?? Как обратиться к previewColorView?
        
    }

}






        
