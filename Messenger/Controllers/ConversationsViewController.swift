//
//  ViewController.swift
//  Messenger
//
//  Created by Lon Chandler Madsen on 9/14/21.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let isLogeedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLogeedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    

}

