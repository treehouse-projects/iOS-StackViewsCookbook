//
//  SimpleStackViews.swift
//  StackViewsCookbook
//
//  Created by Pasan Premaratne on 2/13/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class SimpleStackViewController: UIViewController {
    lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "mountains"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Mountains"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Like", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        imageView.setContentHuggingPriority(UILayoutPriority(249), for: .vertical)
        imageView.setContentCompressionResistancePriority(UILayoutPriority(749), for: .vertical)
        
        let stackView = UIStackView(arrangedSubviews: [imageView, label, button])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        
        view.addSubview(stackView)
        
        if #available(iOS 11, *) {
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0),
                stackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -8.0),
                stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8.0),
                stackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 8.0)
            ])
        } else {
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
                stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0),
                stackView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8.0),
                stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0)
            ])
        }

    }
}
