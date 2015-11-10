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
        
        let url = NSBundle.mainBundle().URLForResource("index", withExtension:"html");
        let request = NSURLRequest(URL: url!);
        
        self.webView.mainFrame.loadRequest(request);
        self.webView.windowScriptObject.setValue(self, forKey: "swift");
        
    }
    
    override class func webScriptNameForSelector(selector: Selector) -> String! {
        switch(selector) {
            case "getCurrentVersion:":
                return "getCurrentVersion";
            default:
                return nil;
        }
    }
    
    override class func isSelectorExcludedFromWebScript(selector: Selector) -> Bool {
        return false;
    }
    
    func executeJavascript(functionToRun:String, argument:String?) {
        var functionName:String;
        var arg:String;
        if ((argument) != nil) {
            arg = argument!;
        } else {
            arg = "";
        }

        functionName = "\(functionToRun)('\(arg)')";
        self.webView.stringByEvaluatingJavaScriptFromString(functionName);
    }
    
    func currentVersion() -> String {
        return "Swift web hybrid template 1.0.0";
    }
    
    func getCurrentVersion() {
        executeJavascript("addVersion", argument:currentVersion());
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

