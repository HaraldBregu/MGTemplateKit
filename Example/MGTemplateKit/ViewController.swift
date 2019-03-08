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
        
//        print("Bundle one 1: \(Bundle(identifier: "org.cocoapods.MGTemplateKit"))")
//        print("Bundle one 2: \(Bundle(for: FontLoader.self))")
//        print("Bundle main: \(Bundle.main)")
//        print("Bundle all: \(Bundle.allBundles)")
        

//        FontLoader.loadFontIfNeeded(fontType: FontType.ionicons(.androidAlert))

        let size = 230
        imageView0.image = UIImage(icon: .ionicons(IoniconsType.androidHome), size: CGSize(width: size, height: size), textColor: .black, backgroundColor: .clear)
        imageView1.image = UIImage(icon: .ionicons(IoniconsType.alert), size: CGSize(width: size, height: size), textColor: .black, backgroundColor: .clear)
        imageView2.image = UIImage(icon: .ionicons(IoniconsType.androidAlert), size: CGSize(width: size, height: size), textColor: .black, backgroundColor: .clear)

        
        //label.font = MGGeneral.Font.black(size: 32)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

