//
//  ViewController.swift
//  Swift web hybrid template
//
//  Created by Willson Smith on 2015-11-09.
//
//

import Cocoa
import WebKit
class ViewController: NSViewController {

    @IBOutlet weak var webView: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let url = Bundle.main.url(forResource: "index", withExtension:"html");
        let request = URLRequest(url: url!);
        
        self.webView.mainFrame.load(request);
        self.webView.windowScriptObject.setValue(self, forKey: "swift");
        
    }
    
    override class func webScriptName(for selector: Selector) -> String? {
        switch(selector) {
            case Selector(("getCurrentVersion:")):
                return "getCurrentVersion";
            default:
                return nil;
        }
    }
    
    override class func isSelectorExcluded(fromWebScript selector: Selector) -> Bool {
        return false;
    }
    
    func executeJavascript(_ functionToRun:String, argument:String?) {
        var functionName:String;
        var arg:String;
        if ((argument) != nil) {
            arg = argument!;
        } else {
            arg = "";
        }

        functionName = "\(functionToRun)('\(arg)')";
        self.webView.stringByEvaluatingJavaScript(from: functionName);
    }
    
    func currentVersion() -> String {
        return "Swift web hybrid template 1.0.0";
    }
    
    func getCurrentVersion() {
        executeJavascript("addVersion", argument:currentVersion());
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

