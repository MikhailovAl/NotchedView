//
//  UIApplication+extension.swift
//  NotchedView
//
//  Created by Mikhailov Alexei on 29.08.2022.
//

import UIKit

extension UIApplication {
    
    static var topWindow: UIWindow {
        
        if #available(iOS 15.0, *) {
            let scenes = UIApplication.shared.connectedScenes
            let windowScene = scenes.first as? UIWindowScene
            return windowScene!.windows.first!
        }
        return UIApplication.shared.windows.filter { $0.isKeyWindow }.first!
    }
    
}
