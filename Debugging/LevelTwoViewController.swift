//
//  LevelTwoViewController.swift
//  Debugging
//
//  Created by Nicholas Aiwazian on 2/4/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

// Exception that isn't caught
class LevelTwoViewController: GameLevelViewController {
    
    @IBOutlet weak var attributedLabel: UILabel!
    @IBOutlet weak var levelTitleLabel: UILabel!
    @IBOutlet weak var finishLevelButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.levelTitleLabel.textColor = self.gameLevel.accentColor
        self.finishLevelButton.backgroundColor = self.gameLevel.accentColor
        
        let myString = NSMutableAttributedString(string: "funWithAttributedStrings")
        myString.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: NSMakeRange(0, 3))
        myString.addAttribute(NSForegroundColorAttributeName, value: UIColor.green, range: NSMakeRange(3, 4))
        myString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blue, range: NSMakeRange(7, 10))
        myString.addAttribute(NSForegroundColorAttributeName, value: UIColor.orange, range: NSMakeRange(17, 7))
        self.attributedLabel.attributedText = myString
    }

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent;
    }
}
