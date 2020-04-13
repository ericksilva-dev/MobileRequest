//
//  SettingsHeadersViewController.swift
//  MobileRequest
//
//  Created by Erick Kaique Da Silva on 12/04/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

class SettingsHeadersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let options: [String] = ["Content-Type: application/json"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UITableViewCell else {
            return UITableViewCell()
        }
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }
}
