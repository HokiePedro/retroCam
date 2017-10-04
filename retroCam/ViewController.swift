//
//  ViewController.swift
//  retroCam
//
//  Created by Pedro Sorto on 9/28/17.
//  Copyright © 2017 pspscode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var CameraView: UIImageView!
    
    @IBOutlet weak var Camera: UIBarButtonItem!
    
    @IBOutlet weak var CameraRoll: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CameraButton(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .camera;
            picker.allowsEditing = false
            self.present(picker, animated: true,
                    completion: nil)
        }
        
        imagePickerController
    };
    
    @IBAction func CameraRollButton(_ sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = false
        self.present(picker, animated: true,
                completion: nil)
    };
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        CameraView.image = image 
        dismiss(animated:true, completion: nil)
    }

    
}

