//
//  MacView.swift
//  Assistant GPT
//
//  Created by Luke Drushell on 2/26/23.
//
#if os(macOS)
import SwiftUI
import WebKit

struct MacView: View {
    
    let url = URL(string: "https://chat.openai.com")!
    let webView = WKWebView()
    
    var body: some View {
        VStack {
            MacWebView(webView: webView)
        }
        .onAppear {
            webView.load(URLRequest(url: url))
        }
    }
}

struct MacWebView: NSViewRepresentable {
    let webView: WKWebView
    
    func makeNSView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
    }
}
#endif
