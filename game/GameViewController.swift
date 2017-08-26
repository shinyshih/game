//
//  GameViewController.swift
//  game
//
//  Created by 施馨檸 on 2017/8/24.
//  Copyright © 2017年 施馨檸. All rights reserved.
//

import UIKit
import GameplayKit

class GameViewController: UIViewController {

    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var directionImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var loseLabel: UILabel!
    
    
    @IBAction func resetButton(_ sender: Any) {
        directionImageView.image = #imageLiteral(resourceName: "steveJobs")
        upButton.alpha = 1
        downButton.alpha = 1
        leftButton.alpha = 1
        rightButton.alpha = 1
        resultLabel.text = "準備好就開始吧😃"
    }
    
    
    
    let directions = ["up","down","left","right"]
    var win: Int = 0
    var lose: Int = 0
    
    @IBAction func play(_ sender: UIButton) {
//        steve隨機出
        let random = GKRandomDistribution(lowestValue: 0, highestValue: directions.count - 1)
        let steveDirection = directions[random.nextInt()]
        directionImageView.image = UIImage(named: steveDirection)
        
//        玩家出
        
            if upButton.tag != sender.tag {
                upButton.alpha = 0.5
            }
            if downButton.tag != sender.tag {
                downButton.alpha = 0.5
            }
            if leftButton.tag != sender.tag {
               leftButton.alpha = 0.5
            }
            if rightButton.tag != sender.tag {
               rightButton.alpha = 0.5
            }
        
        if steveDirection == directions[sender.tag] {
            resultLabel.text = "還不錯嘛！"
            win = win + 1
            winLabel.text = "勝：\(win)"
        } else {
            resultLabel.text = "練練再來吧～"
            lose = lose + 1
            loseLabel.text = "敗：\(lose)"
            
        }
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
