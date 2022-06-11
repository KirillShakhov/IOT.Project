//
//  ViewController.swift
//  IOT
//
//  Created by Кирилл Шахов on 11.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var room_name: UILabel!
    @IBOutlet weak var header_list: UICollectionView!
    @IBOutlet weak var main_list: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        header_list.register(UINib(nibName: "HeaderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HeaderCollectionViewCell")
        main_list.register(UINib(nibName: "MainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionViewCell")
        
        header_list.delegate = self
        header_list.dataSource = self
        
        main_list.delegate = self
        main_list.dataSource = self
    }


}


extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.header_list {
            return 5
        }
        else if collectionView == self.main_list{
            return 4
        }
        return 0
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let storyboard = UIStoryboard(name: "HeaderCollectionViewCell", bundle: nil)
//        guard let vc = storyboard.instantiateViewController(identifier: "HeaderCollectionViewCell") as? HeaderCollectionViewCell else { return }
//        present(vc, animated:true)
//    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.header_list {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCollectionViewCell", for: indexPath) as! HeaderCollectionViewCell
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
            return cell
        }
    }
}
