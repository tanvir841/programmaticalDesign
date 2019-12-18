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
        imageView.contentMode = .scaleAspectFit
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
        
        let topImageContainerView = UIView()
            topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        topImageContainerView.addSubview(pawImageView)
        pawImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        topImageContainerView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
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

