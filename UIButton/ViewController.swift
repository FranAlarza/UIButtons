//
//  ViewController.swift
//  UIButton
//
//  Created by Fran Alarza on 27/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    let strangerThingButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Mike Stranger Things"
        configuration.subtitle = "Protagonista"
        configuration.image = UIImage(systemName: "play.circle.fill")
        
        var mikeButton = UIButton(type: .system)
        mikeButton.configuration = configuration
        mikeButton.translatesAutoresizingMaskIntoConstraints = false
        return mikeButton
    }()
    
    let strangerThingButton2: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Eleven Stranger Things"
        configuration.titleAlignment = .center
        configuration.subtitle = "Protagonista"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .trailing
        
        var mikeButton = UIButton(type: .system)
        mikeButton.configuration = configuration
        mikeButton.translatesAutoresizingMaskIntoConstraints = false
        return mikeButton
    }()
    
    let strangerThingButton3: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Will Stranger Things"
        configuration.titleAlignment = .center
        configuration.subtitle = "Protagonista"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemPurple
        configuration.baseForegroundColor = .white
        
        var mikeButton = UIButton(type: .system)
        mikeButton.configuration = configuration
        mikeButton.translatesAutoresizingMaskIntoConstraints = false
        return mikeButton
    }()
    
    private lazy var strangerThingButton4: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dustin Stranger Things"
        configuration.titleAlignment = .center
        configuration.subtitle = "Protagonista"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        
        var mikeButton = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        mikeButton.configuration = configuration
        mikeButton.translatesAutoresizingMaskIntoConstraints = false
        return mikeButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [strangerThingButton, strangerThingButton2, strangerThingButton3, strangerThingButton4].forEach(view.addSubview)
        
        NSLayoutConstraint.activate([
            strangerThingButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            strangerThingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            strangerThingButton2.topAnchor.constraint(equalTo: strangerThingButton.bottomAnchor, constant: 8),
            strangerThingButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            strangerThingButton3.topAnchor.constraint(equalTo: strangerThingButton2.bottomAnchor, constant: 8),
            strangerThingButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            strangerThingButton4.topAnchor.constraint(equalTo: strangerThingButton3.bottomAnchor, constant: 8),
            strangerThingButton4.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func showMessage() {
        print("Stranger Things")
    }
    
}

