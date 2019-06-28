//
//  DetailViewController.swift
//  delegate2
//
//  Created by digi on 5/28/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit
protocol hienthi {
    func hienthithongtin(ten: String, tuoi: String, anh: UIImage)
}
class DetailViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    var delegate: hienthi?
    @IBOutlet weak var photos: UIImageView!
    @IBOutlet weak var nametextFiled: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    var student:People?
    override func viewDidLoad() {
        super.viewDidLoad()
        if student != nil {
            photos.image = student?.anh
            nametextFiled.text = student?.name
            ageTextField.text = student?.age
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func ClickSave(_ sender: UIButton) {
        delegate?.hienthithongtin(ten: nametextFiled.text!, tuoi: ageTextField.text!, anh: photos.image!)
        navigationController?.popViewController(animated: true)
    }
    // tapget anh
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
       photos.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
}
