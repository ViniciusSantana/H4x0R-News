//
//  WebView.swift
//  H4x0R News
//
//  Created by Vinicius Santana on 27/06/20.
//  Copyright © 2020 Vinicius Santana. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

struct WebView: UIViewRepresentable {
    
    let urlString : String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
