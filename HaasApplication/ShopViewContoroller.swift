//
//  ShopViewController.swift
//  HaasApplication
//
//  Created by 松下航平 on 2017/03/30.
//  Copyright © 2017年 TRICK RING. All rights reserved.
//

import UIKit
import WebKit

class ShopViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var webView: WKWebView!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpWebView()
        loadURL(urlStr: "http://haasandhaas.sakura.ne.jp/ec/")
        
        LoadIndicator.set(v: self)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.webView.frame = self.containerView.bounds
    }
    
    func setUpWebView() {
        let webConfiguration = WKWebViewConfiguration()
        self.webView = WKWebView(frame: self.containerView.bounds, configuration: webConfiguration)
        self.containerView.addSubview(self.webView)
        self.webView.uiDelegate = self
        self.webView.navigationDelegate = self
        self.webView.allowsBackForwardNavigationGestures = true
    }
    
    func loadURL(urlStr: String) {
        let myUrl = URL(string: urlStr)
        let myRequest = URLRequest(url: myUrl!)
        self.webView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("ページ読み込み開始しました！")
        LoadIndicator.on()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("ページ読み込み完了しました！")
        LoadIndicator.off()
    }
}
