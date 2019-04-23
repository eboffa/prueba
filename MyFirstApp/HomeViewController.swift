//
//  HomeViewController.swift
//  MyFirstApp
//
//  Created by Esteban Adrian Boffa on 16/04/2019.
//  Copyright © 2019 Esteban Adrian Boffa. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        renderCornerRadius()
    }
    
    private func renderCornerRadius() {
        
        for miSubView in stackView.arrangedSubviews {
            miSubView.layer.cornerRadius = 8
        }
    }
    
    //MARK: Acciones de usuario
    @IBAction func didTapOnUsers(_ sender: UIButton) {
        
        let usersVC = UsersViewController()
        navigationController?.pushViewController(usersVC, animated: true)
    //  navigationController?.present(usersVC, animated: true, //completion: {
    //  })
    }
    
    @IBAction func didTapOnPost(_ sender: Any) {
        
        let postVC = PostViewController()
        navigationController?.pushViewController(postVC, animated: true)
    }
}
