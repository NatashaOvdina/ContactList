//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Natalia Ovdina on 15.12.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    private var person = Person.getUniquePeopleList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let personListVC = navigationVC.topViewController as? PersonsListViewController {
                    personListVC.person = person
                } else if let infoPersonVC = navigationVC.topViewController as? InfoPersonsListTableViewController {
                    infoPersonVC.person = person
                }
            }
        }
    }
}

