//
//  ViewController.swift
//  Template-1
//
//  Created by Hande Nur Yavaş on 5.06.2023.
//

import UIKit

class CustomTabViewController: UITabBarController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        /*
         // Create a reference to the the appropriate storyboard
         let storyboard = UIStoryboard(name: "Main", bundle: nil)

         // Instantiate the desired view controller from the storyboard using the view controllers identifier
         // Cast is as the custom view controller type you created in order to access it's properties and methods
         let customViewController = storyboard.instantiateViewController(withIdentifier: "CustomViewController") as!CustomViewController
         */
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        let vc1 = UINavigationController(rootViewController: homeViewController)
        let vc2 = UINavigationController(rootViewController: DiscountViewController())
        let vc3 = UINavigationController(rootViewController: CartViewController())
        let vc4 = UINavigationController(rootViewController: AccountViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "percent")
        vc3.tabBarItem.image = UIImage(systemName: "cart")
        vc4.tabBarItem.image = UIImage(systemName: "person")
        
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
    
    
}

