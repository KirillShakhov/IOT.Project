//
//  MainCollectionViewCell.swift
//  IOT
//
//  Created by Кирилл Шахов on 11.06.2022.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    var main_vc: UIViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func click(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "PlantCard", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "PlantCard") as? PlantCard else { return }
        vc.modalPresentationStyle = .popover
        self.main_vc?.present(vc, animated:true)
    }
}
