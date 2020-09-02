//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Truong Nguyen on 9/2/20.
//  Copyright © 2020 Truong Nguyen. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        // ?
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Easy Browser"
        
        let url = URL(string: "https://www.youtube.com/watch?v=pLiT5DdjEbM")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

