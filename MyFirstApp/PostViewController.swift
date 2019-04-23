//
//  PostViewController.swift
//  MyFirstApp
//
//  Created by Esteban Adrian Boffa on 16/04/2019.
//  Copyright © 2019 Esteban Adrian Boffa. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UICollectionViewDataSource {
    
    
    @IBOutlet weak var postCollectionView: UICollectionView!
    let POSTCELL = "postCell"
    var posts: [Post] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.postCollectionView.dataSource = self
        let nibFile = UINib(nibName: "PostCollectionViewCell", bundle: nil)
        self.postCollectionView.register(nibFile, forCellWithReuseIdentifier: POSTCELL)
        self.getPosts()
        self.postCollectionView.contentInset = UIEdgeInsets(top: 50,left: 0,bottom: 0,right: 0)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let rawCell = self.postCollectionView.dequeueReusableCell(withReuseIdentifier: POSTCELL, for: indexPath)
        
        guard let postCell = rawCell as? PostCollectionViewCell else {
            fatalError("This cell could not be casted properly")
        }
        
        postCell.layer.cornerRadius = 8
        
        let row = indexPath.row
        let currentPost = posts[row]
        postCell.setup(with: currentPost)
        return postCell
    }
    
    private func getPosts(){
        
        let post1 = Post(text: "dipisicing pecu, sed do eiusmote conscient to factor tum poen legum odioque", postDate: "12/02/2019")
        let post2 = Post(text: "Yorkie Poodle Puppies", postDate: "13/02/2019")
        let post3 = Post(text: "Yorkie Poodle Puppies Yorkie Poodle Puppies Yorkie Poodle Puppies", postDate: "14/02/2019")
        let post4 = Post(text: "Sweethearts Child Care/Full time special for two years old and encourage", postDate: "17/02/2019")
        let post5 = Post(text: "A", postDate: "23/02/2019")
        let post6 = Post(text: "A", postDate: "30/02/2019")
        let post7 = Post(text: "A", postDate: "01/03/2019")
        let post8 = Post(text: "A", postDate: "12/03/2019")
        let post9 = Post(text: "A", postDate: "15/03/2019")
        let post10 = Post(text: "Matias", postDate: "18/03/2019")
        let post11 = Post(text: "Ezequiel", postDate: "19/03/2019")
        let post12 = Post(text: "Lucas", postDate: "20/03/2019")
        let post13 = Post(text: "Mariano", postDate: "21/03/2019")
        let post14 = Post(text: "Tomas", postDate: "22/03/2019")
        let post15 = Post(text: "Santiago", postDate: "23/03/2019")
        let post16 = Post(text: "Alejandro", postDate: "24/03/2019")
        let post17 = Post(text: "Nicolas", postDate: "25/03/2019")
        let post18 = Post(text: "Mariano", postDate: "26/03/2019")
        let post19 = Post(text: "Roberto", postDate: "28/03/2019")
        let post20 = Post(text: "Nahuel", postDate: "10/04/2019")
        
        posts = [post1, post2, post3, post4, post5, post6, post7, post8, post9, post10, post11, post12, post13, post14, post15, post16, post17, post18, post19, post20]
    }

}
