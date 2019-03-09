// 
//  MGTemplate.swift
//
//  Created by harald bregu on 08/03/2019.
//  Copyright © 2019 Dream Building Company. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import UIColor_Hex_Swift
import FontBlaster

public class MGTemplate {
    
    public init() {
        
        FontBlaster.blast(bundle: .current) { (fonts) in
            print("fonts loaded: \(fonts)")
        }
    }
    
}

public class Visual {
    public var backgroundColor:UIColor = .white
    public var navigationBarColor:UIColor = .white
    public var fontname:String? = nil
    public var fontweight:String? = nil
}

public class Component {
    public var title:String!
    public var visual:Visual!
}

public class MGApp {
    public var name:String!
    public var visual:Visual!
    public var component:[Component]!
    public static let shared:MGApp = MGApp()
}



public class MGGeneral {
    public let app:MGApp!
    
    public init() {
        app = MGApp()
        
        let visual = Visual()
        visual.backgroundColor = .white
        visual.navigationBarColor = .white
        visual.fontname = "Roboto"
        visual.fontweight = "Bold"
        
        app.visual = visual
    }
    
    public class NavBar {
        public class Theme {
            public static var light: UIColor {
                return UIColor("#F3F7F8")
            }
            public static var dark: UIColor {
                return UIColor("#15161D")
            }
        }
    }
    
    public class Label {
        public class Theme {
            public static var light: UIColor {
                return UIColor("#F3F7F8")
            }
            public static var dark: UIColor {
                return UIColor("#15161D")
            }
        }
    }
    
    public class View {
        public class Theme {
            public static var light: UIColor {
                return UIColor("#F3F7F8")
            }
            public static var dark: UIColor {
                return UIColor("#15161D")
            }
        }
    }
    
    public class Refresh {
        public class Theme {
            public static var light: UIColor {
                return .red
            }
            public static var dark: UIColor {
                return UIColor("#15161D")
            }
        }
    }
    
    public class Font {
        public static func medium(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-Medium.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "Medium", size: size)
        }
        public static func light(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-Light.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "Light", size: size)
        }
        public static func regular(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-Regular.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "Regular", size: size)
        }
        public static func mediumItalic(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-MediumItalic.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "MediumItalic", size: size)
        }
        public static func thinItalic(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-ThinItalic.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "ThinItalic", size: size)
        }
        public static func boldItalic(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-BoldItalic.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "BoldItalic", size: size)
        }
        public static func lightItalic(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-LightItalic.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "LightItalic", size: size)
        }
        public static func italic(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-Italic.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "Italic", size: size)
        }
        public static func blackItalic(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-BlackItalic.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "BlackItalic", size: size)
        }
        public static func bold(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-Bold.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "Bold", size: size)
        }
        public static func thin(size: CGFloat) -> UIFont? {
//            UIFont.register("Roboto-Thin.ttf", bundle: .current)
            return UIFont(name: "Roboto" + "-" + "Thin", size: size)
        }
        public static func black(size: CGFloat) -> UIFont? {
//            UIFo.nt.register("Roboto-Black.ttf", bundle: .current)
            return UIFont(name: "Roboto-Black", size: size)
        }
    }

}


public extension UIFont {
    
    public static func register(_ fileName: String, bundle: Bundle) {

        guard let pathForResourceString = bundle.path(forResource: fileName, ofType: nil) else {
            print("UIFont+:  Failed to register font - path for resource not found.")
            return
        }

        guard let fontData = NSData(contentsOfFile: pathForResourceString) else {
            print("UIFont+:  Failed to register font - font data could not be loaded.")
            return
        }

        guard let dataProvider = CGDataProvider(data: fontData) else {
            print("UIFont+:  Failed to register font - data provider could not be loaded.")
            return
        }

        guard let font = CGFont(dataProvider) else {
            print("UIFont+:  Failed to register font - font could not be loaded.")
            return
        }

        var errorRef: Unmanaged<CFError>? = nil
        if (CTFontManagerRegisterGraphicsFont(font, &errorRef) == false) {
            print("UIFont+:  Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
        }
    }
    
}
