//
//  ScoreViewController.swift
//  SimpleOuiz
//
//  Created by 武久　直幹 on 2022/06/06.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    
    var collect = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(collect)問正解！"

        // Do any additional setup after loading the view.
    }
    @IBAction func shareButtonAction(_ sender: UIButton) {
        let activityItems = ["\(collect)問正解しました！","#⭕️❌クイズアプリ"]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityVC, animated: true)
    }
    @IBAction func toTopButtonAction(_ sender: UIButton) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
