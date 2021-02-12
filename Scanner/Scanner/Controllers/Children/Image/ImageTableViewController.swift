//
//  ImageTableViewController.swift
//  Scanner
//
//  Created by Aqeel B on 09/02/21.
//

import UIKit

class ImageTableViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = self
        tableView?.delegate = self
    }
}


// MARK: UITableView Datasource

extension ImageTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50 // TODO: Remove Hardcode
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCellView", for: indexPath)
        return cell
    }
    
}

// MARK: UITableView Delegates

extension ImageTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Pressed at \(indexPath))")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
