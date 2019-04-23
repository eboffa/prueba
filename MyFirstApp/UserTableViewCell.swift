//
//  UserTableViewCell.swift
//  MyFirstApp
//
//  Created by Esteban Adrian Boffa on 17/04/2019.
//  Copyright © 2019 Esteban Adrian Boffa. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    var alphaView : UIView?
    
    override func awakeFromNib() { // se llama una sola vez cuando instancia las primeras 15 rows, algo parecido al viewDidLoad
        print("awake from nib")
        createCuadradito()
    }
    
    func setup(with currentUser: User){  // se llama cada vez que la tabla pide una celda
        guard let alphaView = self.alphaView else {
            fatalError()
        }
        
        self.alphaView?.isHidden = !(currentUser.name == "A")
        self.mainLabel.text = currentUser.name
    }
    
    func createCuadradito() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        view.backgroundColor = .red
        self.addSubview(view)
        view.alpha = 0.2
        self.alphaView = view
    }
    
}
