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
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 初期の画像を設定
        let initialImage = UIImage(named: "attack1")
        attacks[0].image = initialImage
    }

    @IBAction func attackButton(_ sender: UIButton) {
        // 既存のタイマーが動作している場合は無効にする
                timer?.invalidate()
                
                // 0.5秒ごとにupdateImageメソッドを呼び出すタイマーを設定
                timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateImage), userInfo: nil, repeats: true)
    }
    @objc func updateImage() {
            // currentAttackIndexをインクリメント
            currentAttackIndex += 1
            
            // currentAttackIndexが20を超えた場合、タイマーを無効にして1にリセット
            if currentAttackIndex > 20 {
                timer?.invalidate()
                currentAttackIndex = 1
            }
            
            // currentAttackIndexに基づいて画像を設定
            let imageName = "attack\(currentAttackIndex)"
            if let image = UIImage(named: imageName) {
                attacks[0].image = image
            }
        }
}
