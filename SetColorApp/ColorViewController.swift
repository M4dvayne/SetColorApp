//
//  ViewController.swift
//  SetColorApp
//
//  Created by Вячеслав Кремнев on 2/6/22.
//

import UIKit

protocol SettingsViewControllerDelegate {
    
    func passColor(to colorViewController: UIColor)
}

class ColorViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let settingVC = segue.destination as? SettingsViewController else {return}
        settingVC.delegate = self
        settingVC.viewColor = view.backgroundColor
        }
    }

extension ColorViewController: SettingsViewControllerDelegate {

    func passColor(to colorViewController: UIColor) {

        view.backgroundColor = colorViewController
    }
    
    
    
    
    
   
    
    








        
}
