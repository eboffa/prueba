//
//  UsersViewController.swift
//  MyFirstApp
//
//  Created by Esteban Adrian Boffa on 16/04/2019.
//  Copyright © 2019 Esteban Adrian Boffa. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var usersTableView: UITableView!
    let USERCELL = "userCell"
    var users: [User] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.usersTableView.dataSource = self
        let nibFile = UINib(nibName: "UserTableViewCell", bundle: nil)
        self.usersTableView.register(nibFile, forCellReuseIdentifier: USERCELL)
        self.getUsers()
        self.usersTableView.contentInset = UIEdgeInsets(top: 45,left: 0,bottom: 0,right: 0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rawCell = self.usersTableView.dequeueReusableCell(withIdentifier: USERCELL, for: indexPath)
        guard let userCell = rawCell as? UserTableViewCell else {
            fatalError("This cell could not be casted properly")
        }
        
        print("row called \(indexPath.row)")
        
        let row = indexPath.row
        let currentUser = users[row]
        userCell.setup(with: currentUser)
        return userCell
    }
    
    
    private func getUsers(){

        let user1 = User(name: "A")
        let user2 = User(name: "A")
        let user3 = User(name: "A")
        let user4 = User(name: "A")
        let user5 = User(name: "A")
        let user6 = User(name: "A")
        let user7 = User(name: "A")
        let user8 = User(name: "A")
        let user9 = User(name: "A")
        let user10 = User(name: "Esteban")
        let user11 = User(name: "Juan")
        let user12 = User(name: "Gabriel")
        let user13 = User(name: "Pablo")
        let user14 = User(name: "Manuel")
        let user15 = User(name: "Marcelo")
        let user16 = User(name: "German")
        let user17 = User(name: "Sebastian")
        let user18 = User(name: "Pedro")
        let user19 = User(name: "Gonzalo")
        let user20 = User(name: "Tomas")
        
        users = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20, user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20]
    }

}
