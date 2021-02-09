//
//  ViewController.swift
//  Scanner
//
//  Created by Aqeel B on 08/02/21.
//

import UIKit
import WeScan

class ViewController: UIViewController {
    
    @IBAction func didPressInitButton(_sender: UIButton) {
        let scannerViewController = ImageScannerController()
        scannerViewController.imageScannerDelegate = self
        present(scannerViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: ImageScannerControllerDelegate {
    func imageScannerController(_ scanner: ImageScannerController, didFinishScanningWithResults results: ImageScannerResults) {
        scanner.dismiss(animated: true)
    }
    
    func imageScannerControllerDidCancel(_ scanner: ImageScannerController) {
        scanner.dismiss(animated: true)
    }
    
    func imageScannerController(_ scanner: ImageScannerController, didFailWithError error: Error) {
        print(error)
    }
    
}
