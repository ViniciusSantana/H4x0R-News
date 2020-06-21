//
//  DetailView.swift
//  H4x0R News
//
//  Created by Vinicius Santana on 27/06/20.
//  Copyright © 2020 Vinicius Santana. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


