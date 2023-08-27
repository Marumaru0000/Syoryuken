//
//  ViewController.swift
//  Syoryuken
//
//  Created by 丸山航輝 on 2023/08/27.
//
/*僕のレポジトリをご覧の方へ*/
/*個人的にわかりやすかったサイトを貼っておきます！ぜひ参考にしてみてください！*/
/*https://seeku.hateblo.jp/entry/2016/07/02/204854*/
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var attacks: [UIImageView]!
    var currentAttackIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 初期の画像を設定
        let initialImage = UIImage(named: "attack1")
        attacks[0].image = initialImage
    }

    @IBAction func attackButton(_ sender: UIButton) {
        // 画像の番号を増やす
        currentAttackIndex += 1
        
        // attack20まで行ったらattack1に戻る
        if currentAttackIndex > 20 {
            currentAttackIndex = 1
        }
        
        // 新しい画像を設定
        let imageName = "attack\(currentAttackIndex)"
        let newImage = UIImage(named: imageName)
        attacks[0].image = newImage
    }
}
