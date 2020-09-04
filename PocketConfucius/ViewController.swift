//
//  ViewController.swift
//  PocketConfucius
//
//  Created by Tiger Coder on 8/20/20.
//  Copyright © 2020 Crystal Lake Central. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    let initTexts: [String] = [
        "Congrats! You found an easter egg.",
        "Swipe left to get to the next bit of text.",
        "Swipe right to get to the previous bit of text",
        "It's really that simple, have fun!"
    ];
    
    let confuciusTexts: [String] = [
        "Confucius say, man who keep feet on ground have trouble putting on pants.",
        "Confucius say, man who run before bus get tired.",
        "Confucius say, man who run behind bus get exhausted.",
        "Confucius say, man who sleep in bed of nails is holy.",
        "Confucius say, man who leap off cliff jump to conclusion.",
        "Confucius say, man who throws dirt is losing ground."
    ];
    
    let afterTexts: [String] = [
        "That's all folks!"
    ];
    
    var allTexts: [String] = [];
    
    var displaying: Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        allTexts = initTexts;
        allTexts.append(contentsOf: confuciusTexts.shuffled());
        allTexts.append(contentsOf: afterTexts);
        updateLabel();
    }

    @IBAction func onSwipeLeft(_ sender: Any) {
        if(displaying < allTexts.count - 1) {
            displaying += 1;
        }
        updateLabel();
    }
    @IBAction func onSwipeRight(_ sender: Any) {
        if(displaying > 0) {
            displaying -= 1;
        }
        updateLabel();
    }
    
    func updateLabel() {
        label.text = allTexts[displaying];
    }
}

