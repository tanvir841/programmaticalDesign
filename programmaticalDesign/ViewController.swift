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
        
        let attributedText = NSMutableAttributedString(string: "Care for Paws!", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 20)])
        attributedText.append(NSAttributedString(string: "\n\nDonate today to save a pet's life!", attributes:   [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 18),NSAttributedString.Key.foregroundColor: UIColor.darkGray]))
        //        labelText.text = "Care for Paws!"
//        labelText.font = UIFont.boldSystemFont(ofSize: 20)
        labelText.attributedText = attributedText
            labelText.textAlignment = .center
        labelText.isEditable = false
        labelText.isScrollEnabled = false
        labelText.translatesAutoresizingMaskIntoConstraints = false
        return labelText
    }()
    
    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //view.addSubview(pawImageView)
        view.addSubview(descriptionTextView)
        
        setupBottomControl()
        setupLayout()
        //imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        // Do any additional setup after loading the view.
    }
    fileprivate func setupBottomControl(){
        view.addSubview(previousButton)
        previousButton.backgroundColor = .red
        //previousButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        NSLayoutConstraint.activate([previousButton.topAnchor.constraint(equalTo:    view.safeAreaLayoutGuide.topAnchor),previousButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),previousButton.trailingAnchor.constraint(equalTo:  view.trailingAnchor),previousButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    private func setupLayout() {
        
        let topImageContainerView = UIView()
            topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //topImageContainerView.heightAnchor.constraint(equalTo:  view.heightAnchor, multiplier: 0.3).isActive = true
       
        topImageContainerView.addSubview(pawImageView)
        pawImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        pawImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        pawImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5 ).isActive = true
        
        //        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        
//        pawImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        pawImageView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
//        pawImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        pawImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 70).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        let bottomImageContainerView = UIView()
        bottomImageContainerView.backgroundColor = .cyan
        view.addSubview(bottomImageContainerView)
        bottomImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomImageContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
    }

}

