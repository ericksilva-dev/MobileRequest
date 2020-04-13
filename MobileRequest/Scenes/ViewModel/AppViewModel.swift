//
//  AppViewModel.swift
//  MobileRequest
//
//  Created by Erick Kaique Da Silva on 13/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

protocol AppViewModelProtocol: class {
    func validateData(data: String?)
    var next: (() -> Void)? { get set }
}

class AppViewModel: AppViewModelProtocol {
    var next: (() -> Void)?
    
    private var configuration: [String] = [String]()
    
    func validateData(data: String?) {
        guard let dataValidated = data, !dataValidated.isEmpty else {
            return
        }
        settingsAttributesService(data: dataValidated)
    }
    
    func settingsAttributesService(data: String) {
        configuration.append(data)
        print("A CONFIGURAÇÃO DO SERVIÇO ESTA FICANDO ASSIM: \(configuration)")
    }
    
    func updateModel(data: String) {
        
    }
}
