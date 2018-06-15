//
//  ViewController.swift
//  Eluxon
//
//  Created by david.roff on 1/22/18.
//  Copyright © 2018 david.roff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLbl: UILabel!    
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3621281683, green: 0.3621373773, blue: 0.3621324301, alpha: 1)
            onOffLbl.text = "🌚 OFF 🌚"
            onOffLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLbl.text = "🌝 ON 🌝"
            onOffLbl.textColor = #colorLiteral(red: 0.3621281683, green: 0.3621373773, blue: 0.3621324301, alpha: 1)
        }
    }
    

}

