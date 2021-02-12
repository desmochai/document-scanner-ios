//
//  RootTabViewController.swift
//  Scanner
//
//  Created by Aqeel B on 09/02/21.
//

import UIKit

class CustomTabBarController:  UITabBarController, UITabBarControllerDelegate {
    
    var homeViewController: ImageTableViewController!
    var actionsViewController: ActionsViewController!
    var secondViewController: AccountViewController!

    override func viewDidLoad(){
        super.viewDidLoad()
        self.delegate = self
        
        homeViewController = ImageTableViewController()
        actionsViewController = ActionsViewController()
        secondViewController = AccountViewController()
     
        homeViewController.tabBarItem.image = UIImage(systemName: "clock")
        homeViewController.tabBarItem.selectedImage = UIImage(systemName: "clock.fill")
        
        
        actionsViewController.tabBarItem.image = UIImage(systemName: "scribble")
        actionsViewController.tabBarItem.selectedImage = UIImage(systemName: "scribble.variable")
        
        secondViewController.tabBarItem.image = UIImage(systemName: "person")
        secondViewController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        viewControllers = [homeViewController, actionsViewController, secondViewController]
    }
    
    //MARK: UITabbar Delegate
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
      if viewController.isKind(of: ActionsViewController.self) {
        
        let controller = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cameraAction = UIAlertAction(title: "Use Camera", style: .default) { action in }
        let galleryAction = UIAlertAction(title: "Pick from Gallery", style: .default) { action in }
        let fileManagerAction = UIAlertAction(title: "Pick from file system", style: .default) { action in }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in }
        
        
        controller.addAction(cameraAction)
        controller.addAction(galleryAction)
        controller.addAction(fileManagerAction)
        controller.addAction(cancelAction)
        
        self.present(controller, animated: true, completion: nil)
        
         return false
      }
      return true
    }
    
}

