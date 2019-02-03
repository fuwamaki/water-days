//
//  ViewController.swift
//  water-days
//
//  Created by Maki, Yusaku | Mackey | ECID on 2019/02/02.
//  Copyright © 2019年 sekimaki. All rights reserved.
//

import UIKit
import BAFluidView

class HomeViewController: UIViewController {

    @IBOutlet private var backgroundView: UIView!
    @IBOutlet private weak var percentLabel: UILabel!

    private var percent: NSNumber = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        percent = 0.4
        percentLabel.text = "40%"
        let fluidView: BAFluidView = BAFluidView(frame: view.frame, startElevation: percent)
        fluidView.fillColor = UIColor.init(hex: 0x397ebe)
        fluidView.startAnimation()

        view.addSubview(fluidView)
        // これは違う気がする
        fluidView.addSubview(percentLabel)
    }
}
