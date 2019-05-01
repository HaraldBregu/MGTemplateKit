//
//  ViewController.swift
//  MGTemplateKit
//
//  Created by AldoOS on 03/07/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGTemplateKit

class ViewController: UIViewController {
    @IBOutlet var imageView0: UIImageView!
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = MGTemplate.asset.color.view
        
        let size = 230
        imageView0.image = UIImage(icon: .ionicons(IoniconsType.androidHome), size: CGSize(width: size, height: size), textColor: .white, backgroundColor: .clear)
        imageView1.image = UIImage(icon: .ionicons(IoniconsType.alert), size: CGSize(width: size, height: size), textColor: .white, backgroundColor: .clear)
        imageView2.image = UIImage(icon: .openIconic(.chevronRight), size: CGSize(width: size, height: size), textColor: .white)

//        label.font = MGTemplate.Font(size: 43).black
        label.textColor = .white
        label.font = MGFont.Roboto.black.size(39)
    }

}

