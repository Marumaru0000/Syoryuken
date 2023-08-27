//
//  ViewController.swift
//  Syoryuken
//
//  Created by 丸山航輝 on 2023/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var attacks: [UIImageView]!
    
    var currentAttackIndex = 0
    let maxAttackIndex = 19 // 0から19までの20枚の画像
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
                for attack in attacks {
                    attack.isUserInteractionEnabled = true
                    attack.addGestureRecognizer(tapGesture)
                }
            }
            
    @objc func handleTap() {
        currentAttackIndex += 1
        if currentAttackIndex > maxAttackIndex {
            currentAttackIndex = 0
        }
        
        for attack in attacks {
            let imageName = "attack\(currentAttackIndex + 1)" // attack1からattack20まで
            attack.image = UIImage(named: imageName)
        }
        
    }
    
    @IBAction func attackButton(_ sender: UIButton) {
        handleTap()
    }
    
}

