//
//  SettingsUrlViewController.swift
//  MobileRequest
//
//  Created by Erick Kaique Da Silva on 12/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SettingsUrlViewController: UIViewController {
    
    
    @IBOutlet weak var urlServiceTF: UITextField!
    
    private let viewModel: AppViewModelProtocol = AppViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnFinalization(_ sender: Any) {
        viewModel.validateData(data: urlServiceTF.text)
        viewModel.next = { [weak self] in
            print("Testando")
        }
    }
}
