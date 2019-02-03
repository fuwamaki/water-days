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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let fluidView: BAFluidView = BAFluidView(frame: view.frame)
        fluidView.fill(to: 1.0)
        fluidView.fillColor = UIColor.init(hex: 0x397ebe)
        fluidView.startAnimation()
        view.addSubview(fluidView)
    }
}
