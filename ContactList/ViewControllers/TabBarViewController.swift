//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Natalia Ovdina on 15.12.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                let personListVC = navigationVC.topViewController
                guard let personListVC = personListVC as? PersonsListViewController else { return }
                personListVC.person = person
            } else if let navigationVC = viewController as? UINavigationController {
                let personDetailsVC = navigationVC.topViewController
                guard let personDetailsVC = personDetailsVC as? InfoPersonsListTableViewController else {
                    return
                }
                personDetailsVC.person = person
            }
        }
    }
}

