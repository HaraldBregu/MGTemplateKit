//
//  AppDelegate.swift
//  MGTemplateKit
//
//  Created by AldoOS on 03/07/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGTemplateKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let asset = TemplateAssets(
            color: TemplateColor(
                view: .red,
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
                largeTitle: UIFont(),
                title1: UIFont(),
                title2: UIFont(),
                title3: UIFont(),
                headline: UIFont(),
                body: UIFont(),
                callout: UIFont(),
                subhead: UIFont(),
                footnote: UIFont(),
                caption1: UIFont(),
                caption2: UIFont()))
        
        MGTemplate.configure()
        MGTemplate.use(asset: asset)

        return true
    }

}


struct TemplateAssets: MGAsset {
    var color: MGTemplateColor
    var font: MGTemplateFont
}

struct TemplateColor: MGTemplateColor {
    var view: UIColor
    var navigationBar: UIColor
    var toolBar: UIColor
    var sideBar: UIColor
    var searchBar: UIColor
    var scrollView: UIColor
    var tableView: UIColor
    var tableViewCell: UIColor
    var tableViewSeparator: UIColor
    var tableViewHeader: UIColor
    var tableViewFooter: UIColor
    var tableViewHeaderSection: UIColor
    var tableViewFooterSection: UIColor
    var collectionView: UIColor
    var collectionViewCell: UIColor
    var collectionViewHeader: UIColor
    var collectionViewFooter: UIColor
    var collectionViewHeaderSection: UIColor
    var collectionViewFooterSection: UIColor
    var activityIndicator: UIColor
    var text: MGTemplateColorText
}

struct TemplateColorText: MGTemplateColorText {
    var navigationBar: UIColor
    var toolBar: UIColor
    var primary: UIColor
    var secondary: UIColor
    var placeholder: UIColor
    var disabled: UIColor
    var error: UIColor
}

struct TemplateFont: MGTemplateFont {
    var largeTitle: UIFont?
    var title1: UIFont?
    var title2: UIFont?
    var title3: UIFont?
    var headline: UIFont?
    var body: UIFont?
    var callout: UIFont?
    var subhead: UIFont?
    var footnote: UIFont?
    var caption1: UIFont?
    var caption2: UIFont?
}

//struct Font: MGFont {
//    var thin: String
//    var thinItalic: String
//    var light: String
//    var lightItalic: String
//    var regular: String
//    var regularItalic: String
//    var medium: String
//    var mediumItalic: String
//    var bold: String
//    var boldItalic: String
//    var black: String
//    var blackItalic: String
//}

