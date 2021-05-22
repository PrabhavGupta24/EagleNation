//
//  BulletinView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI
//import PDFKit


struct BulletinView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Daily Bulletin").font(.largeTitle)
                Spacer()
            }
            Spacer()
            Bulletin()
            Spacer()
        }
        .padding()
    }
}

struct Bulletin: View {
    var body: some View {
//        class PDFView:NSView {
//            var document: PDFDocument? { get set }
//        }
        
        Text("Insert here")
    }
}

//struct PDFKitRepresentedView: UIViewRepresentable {
//    let url: URL
//
//    init(_ url: URL) {
//        self.url = url
//    }
//
//    func makeUIView(context: UIViewRepresentableContext<PDFKitRepresentedView>) -> PDFKitRepresentedView.UIViewType {
//        // Create a `PDFView` and set its `PDFDocument`.
//        let pdfView = PDFView()
//        pdfView.document = PDFDocument(url: self.url)
//        return pdfView
//    }

//    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDFKitRepresentedView>) {
//        // Update the view.
//    }
//}

struct BulletinView_Previews: PreviewProvider {
    static var previews: some View {
        BulletinView()
    }
}
