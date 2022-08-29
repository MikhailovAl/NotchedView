//
//  ViewController.swift
//  NotchedView
//
//  Created by Mikhailov Alexei on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var notchView: UIView {
        let notchLabel = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 34.0))
        notchLabel.text = "Any text your want"
        notchLabel.backgroundColor = .clear
        notchLabel.textAlignment = .center
        notchLabel.textColor = .black
        notchLabel.layer.zPosition = CGFloat(Float.greatestFiniteMagnitude)
        return notchLabel
    }
    
    var isNotchViewNeeded: Bool {
        UIApplication.topWindow.safeAreaInsets.top > 0
//        &&
//        Environments.shared.environment != .prod
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "You gorgeous app"
        configureNotchView()
    }
    
    func configureNotchView() {
        if isNotchViewNeeded {
            UIApplication.topWindow.addSubview(notchView)
        }
    }
    
}

