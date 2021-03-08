//
//  ViewController.swift
//  PeanutCounterApp
//
//  Created by Malik Arachiche on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0 {
        didSet {
            counterLabel.text = "\(count)"
        }
    }
    @IBOutlet var counterLabel: UILabel!
    
    @IBOutlet var addButton: UIButton!
    
    lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Eat peanut", for: .normal)
        button.backgroundColor = .brown
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Cochin-BoldItalic", size: 14)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view.
    }
    
    func setUpView() {
        view.addSubview(minusButton)
        counterLabel.textAlignment = .center
        counterLabel.textColor = .black
        counterLabel.text = "\(count)"
        counterLabel.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 18)
        counterLabel.numberOfLines = 0
        
        addButton.setTitle("Add peanut", for: .normal)
        addButton.backgroundColor = .brown
        addButton.tintColor = .white
        addButton.titleLabel?.font = UIFont(name: "Cochin-BoldItalic", size: 14)
        addButton.layer.cornerRadius = 20
        
        NSLayoutConstraint.activate([
            minusButton.widthAnchor.constraint(equalTo: addButton.widthAnchor),
            minusButton.heightAnchor.constraint(equalTo: addButton.heightAnchor),
            minusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            minusButton.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 16)
            
        ])
        
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
        count += 1
    }
    
    @objc func minusButtonTapped() {
        if count > 0 {
            count -= 1
        }
    }
}

