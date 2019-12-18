//
//  ViewController.swift
//  programmaticalDesign
//
//  Created by Tanvir on 12/17/19.
//  Copyright © 2019 tanvir841. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let pawImageView: UIImageView = {
     let imageView = UIImageView(image: #imageLiteral(resourceName: "paw"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let descriptionTextView: UITextView = {
        let labelText = UITextView()
        labelText.text = "Care for Paws!"
        labelText.font = UIFont.boldSystemFont(ofSize: 20)
        labelText.textAlignment = .center
        labelText.isEditable = false
        labelText.isScrollEnabled = false
        labelText.translatesAutoresizingMaskIntoConstraints = false
        return labelText
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(pawImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
        //imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        // Do any additional setup after loading the view.
    }
    private func setupLayout() {
        pawImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pawImageView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        pawImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        pawImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: pawImageView.bottomAnchor, constant: 150).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}

