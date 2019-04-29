//
//  ViewController.swift
//  MGTemplateKit
//
//  Created by AldoOS on 03/07/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGTemplateKit
import FontBlaster

class ViewController: UIViewController {
    @IBOutlet var imageView0: UIImageView!
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let assets = TemplateAssets(
            color: TemplateColor(
                view: .blue,
                navigationBar: .red,
                toolBar: .red,
                sideBar: .red,
                searchBar: .red,
                scrollView: .red,
                tableView: .red,
                tableViewCell: .red,
                tableViewSeparator: .red,
                tableViewHeader: .red,
                tableViewFooter: .red,
                tableViewHeaderSection: .red,
                tableViewFooterSection: .red,
                collectionView: .red,
                collectionViewCell: .red,
                collectionViewHeader: .red,
                collectionViewFooter: .red,
                collectionViewHeaderSection: .red,
                collectionViewFooterSection: .red,
                activityIndicator: .red,
                text: TemplateColorText(
                    navigationBar: .red,
                    toolBar: .red,
                    primary: .red,
                    secondary: .red,
                    placeholder: .red,
                    disabled: .red,
                    error: .red)),
            font: TemplateFont(
                navigationBar: UIFont(),
                toolBar: UIFont(),
                primary: UIFont(),
                secondary: UIFont(),
                placeholder: UIFont(),
                disabled: UIFont(),
                error: UIFont()))

        MGTemplate.setup(assets: assets)

        view.backgroundColor = MGTemplate.color.view

//        MGTemplate.color.view.primary.view
//        MGTemplate.color.content.primary.label
        
        let size = 230
        imageView0.image = UIImage(icon: .ionicons(IoniconsType.androidHome), size: CGSize(width: size, height: size), textColor: .white, backgroundColor: .clear)
        imageView1.image = UIImage(icon: .ionicons(IoniconsType.alert), size: CGSize(width: size, height: size), textColor: .white, backgroundColor: .clear)
        imageView2.image = UIImage(icon: .ionicons(IoniconsType.androidAlert), size: CGSize(width: size, height: size), textColor: .white, backgroundColor: .clear)

        label.font = MGTemplate.Font(size: 43).black
        label.textColor = .white
    }

}

