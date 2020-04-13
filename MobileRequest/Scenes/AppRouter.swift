//
//  AppRouter.swift
//  MobileRequest
//
//  Created by Erick Kaique Da Silva on 12/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

protocol AppRouterType: class {
    func cellSelected(_ row: Int)
}

class AppRouter: UINavigationController, AppRouterType {
    
    func cellSelected(_ row: Int) {
        switch row {
        case 0:
            createSettingsUrl()
        case 1:
            createSettingsMethod()
        case 2:
            createSettingsHeaders()
        default:
            break
        }
    }
}

extension AppRouter {
    func createSettingsUrl() {
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "SettingsUrlViewController")
            as? SettingsUrlViewController {
            self.present(destinationVC, animated: true, completion: nil)
        }
    }
    
    func createSettingsMethod() {
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "SettingsMethodViewController")
            as? SettingsMethodViewController {
            self.present(destinationVC, animated: true, completion: nil)
        }
    }
    
    func createSettingsHeaders() {
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "SettingsHeadersViewController") as? SettingsHeadersViewController {
            self.present(destinationVC, animated: true, completion: nil)
        }
    }
}
