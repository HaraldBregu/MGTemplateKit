//
//  AppDelegate.swift
//  MGTemplateKit
//
//  Created by AldoOS on 03/07/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGTemplateKit


struct TemplateAssets: MGTemplateAssets {
    var color: MGTemplateColor
    var font: MGTemplateFont
}

struct TemplateColor: MGTemplateColor {
    var view: UIColor
    var navigationBar: UIColor
    var toolBar: UIColor
    var sideBar: UIColor
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
    var navigationBar: UIFont
    var toolBar: UIFont
    var primary: UIFont
    var secondary: UIFont
    var placeholder: UIFont
    var disabled: UIFont
    var error: UIFont
}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let assets = TemplateAssets(
            color: TemplateColor(
                view: .red,
                navigationBar: .red,
                toolBar: .red,
                sideBar: .red,
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
        
//        MGTemplate.assets.color.view.collectionView = .red
//        MGTemplate.assets.color.text.primary = .red
//        MGTemplate.assets.font.text.navigationBar = UIFont()
        
//        let color = TemplateColorData(primary: .red, secondary: .green)
//        MGTemplate.setup(assets: TemplateAssets(
//            color: TemplateColor(
//                view: TemplateColorData(primary: .red, secondary: .green),
//                navigationBar: color,
//                toolBar: color,
//                scrollView: color,
//                tableView: color,
//                tableViewCell: color,
//                tableViewHeader: color,
//                tableViewFooter: color,
//                tableViewHeaderSection: color,
//                tableViewFooterSection: color,
//                collectionView: color,
//                collectionViewCell: color,
//                collectionViewHeader: color,
//                collectionViewFooter: color,
//                collectionViewHeaderSection: color,
//                collectionViewFooterSection: color)))
        
        
//        MGTemplate.setup(
//            assets: TemplateAssets(
//                viewColor: TemplateViewColor(
//                    primary: TemplateColorData(
//                        view: #colorLiteral(red: 0.08235294118, green: 0.0862745098, blue: 0.1137254902, alpha: 1),
//                        navigationBar: .red,
//                        toolBar: .red,
//                        scrollView: .red,
//                        tableView: .red,
//                        tableViewCell: .red,
//                        tableViewHeader: .red,
//                        tableViewFooter: .red,
//                        tableViewHeaderSection: .red,
//                        tableViewFooterSection: .red,
//                        collectionView: .red,
//                        collectionViewCell: .red,
//                        collectionViewHeader: .red,
//                        collectionViewFooter: .red,
//                        collectionViewHeaderSection: .yellow,
//                        collectionViewFooterSection: .red),
//                    secondary: TemplateColorData(
//                        view: .red,
//                        navigationBar: .red,
//                        toolBar: .red,
//                        scrollView: .red,
//                        tableView: .red,
//                        tableViewCell: .red,
//                        tableViewHeader: .red,
//                        tableViewFooter: .red,
//                        tableViewHeaderSection: .red,
//                        tableViewFooterSection: .red,
//                        collectionView: .red,
//                        collectionViewCell: .red,
//                        collectionViewHeader: .red,
//                        collectionViewFooter: .red,
//                        collectionViewHeaderSection: .red,
//                        collectionViewFooterSection: .red)),
//                contentColor: TemplateContentColor(
//                    primary: TemplateColorData(
//                        view: #colorLiteral(red: 0.08235294118, green: 0.0862745098, blue: 0.1137254902, alpha: 1),
//                        navigationBar: .red,
//                        toolBar: .red,
//                        scrollView: .red,
//                        tableView: .red,
//                        tableViewCell: .red,
//                        tableViewHeader: .red,
//                        tableViewFooter: .red,
//                        tableViewHeaderSection: .red,
//                        tableViewFooterSection: .red,
//                        collectionView: .red,
//                        collectionViewCell: .red,
//                        collectionViewHeader: .red,
//                        collectionViewFooter: .red,
//                        collectionViewHeaderSection: .yellow,
//                        collectionViewFooterSection: .red),
//                    secondary: TemplateColorData(
//                        view: .red,
//                        navigationBar: .red,
//                        toolBar: .red,
//                        scrollView: .red,
//                        tableView: .red,
//                        tableViewCell: .red,
//                        tableViewHeader: .red,
//                        tableViewFooter: .red,
//                        tableViewHeaderSection: .red,
//                        tableViewFooterSection: .red,
//                        collectionView: .red,
//                        collectionViewCell: .red,
//                        collectionViewHeader: .red,
//                        collectionViewFooter: .red,
//                        collectionViewHeaderSection: .red,
//                        collectionViewFooterSection: .red))))
//
//        MGTemplate.color.primary.collectionViewHeaderSection = .blue
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

