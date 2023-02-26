//
//  PhoneView.swift
//  Assistant GPT
//
//  Created by Luke Drushell on 2/26/23.
//
#if os(iOS)
import SwiftUI
import WebKit

struct PhoneView: View {
    
    let url = URL(string: "https://chat.openai.com")!
    let webView = WKWebView()
    
    var body: some View {
        ZStack {
            PhoneWebView(url: url)
                .edgesIgnoringSafeArea(.bottom)
                .persistentSystemOverlays(.hidden)
        }
    }
}

struct PhoneWebView: UIViewRepresentable {
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        let wk = WKWebView()
        wk.bounds = UIScreen.main.bounds
        wk.scrollView.contentInsetAdjustmentBehavior = .never
        return wk
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
#endif
