//
//  AccountViewController.swift
//  Scanner
//
//  Created by Aqeel B on 09/02/21.
//

import UIKit
import WeScan

class AccountViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("AccountViewController view Controller")
    }
}

// MARK:

extension AccountViewController: ImageScannerControllerDelegate {
    func imageScannerController(_ scanner: ImageScannerController, didFinishScanningWithResults results: ImageScannerResults) {
        print(results)
    }
    
    func imageScannerControllerDidCancel(_ scanner: ImageScannerController) {
        scanner.dismiss(animated: true)
    }
    
    func imageScannerController(_ scanner: ImageScannerController, didFailWithError error: Error) {
        scanner.dismiss(animated: true)
        print(error.localizedDescription)
    }
}

// MARK:

extension AccountViewController {
    @IBAction func didPressCallToAction() {
        let scannerViewController = ImageScannerController()
        scannerViewController.imageScannerDelegate = self
        present(scannerViewController, animated: true)
    }
}
