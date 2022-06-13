//
//  PlantCardViewController.swift
//  IOT
//
//  Created by Кирилл Шахов on 12.06.2022.
//

import UIKit

class PlantCard: UIViewController {
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightButton.tintColor = .gray
    }
    @IBAction func ClickOnLight(_ sender: UIButton) {
        if(sender.tintColor == .systemYellow){
            sender.tintColor = .gray
        }
        else{
            sender.tintColor = .systemYellow
        }
    }
}
