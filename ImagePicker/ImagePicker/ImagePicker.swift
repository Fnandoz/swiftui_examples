//
//  ImagePicker.swift
//  ImagePicker
//
//  Created by Fernando Gomes on 06/04/20.
//  Copyright © 2020 Fernando Gomes. All rights reserved.
//

import Combine
import SwiftUI

class ImagePicker: ObservableObject {
    static let shared: ImagePicker = ImagePicker()
    private init() {}
    
    let view = ImagePicker.View()
    let coordinator = ImagePicker.Coordinator()
    
    let willChange = PassthroughSubject<Image?, Never>()
    @Published var image: Image? = nil {
        didSet{
            if image != nil {
                willChange.send(image)
            }
        }
    }
}

extension ImagePicker {
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            ImagePicker.shared.image = Image(uiImage: image)
            picker.dismiss(animated: true)
        }
    }
}

extension ImagePicker {
    struct View: UIViewControllerRepresentable {
        func makeCoordinator() -> Coordinator {
            return ImagePicker.shared.coordinator
        }
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker.View>) -> UIImagePickerController {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = context.coordinator
            return imagePickerController
        }
        
        func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker.View>) {
            
        }
    }
}
