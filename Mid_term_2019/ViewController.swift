//
//  ViewController.swift
//  Mid_term_2019
//
//  Created by Manish Dua on 2019-11-06.
//  Copyright © 2019 Manish Dua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var imageResult: UILabel!
    @IBOutlet weak var buttonAlert: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Qusetion - 1
        
        let Label1 = UILabel.init()
        Label1.text = "Swift is a powerful and intuitive programming language for macOS, iOS, watchOS, tvOS and beyond.";
        // x & y are changes to 100 instead of 0 as it was going on top corener of screen and was not visible
        Label1.frame = CGRect(x: 100, y: 100, width: 200, height: 21)
        Label1.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
        Label1.numberOfLines = 5
        Label1.sizeToFit()
        self.view.addSubview(Label1)
        
        //Quesiont - 2
        var myMutableString = NSMutableAttributedString()
         
        myMutableString = NSMutableAttributedString(string: Label1.text as! String, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 18.0)!])
         
         
         myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange(location:1,length:20))

         myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location:24,length:44))
         myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location:45,length:50))
         
            Label1.attributedText = myMutableString
        
        //Qusetion - 3
        
        let secondLabel = UILabel.init()
          secondLabel.frame = CGRect(x: 100, y: 250, width: 200, height: 21)
        secondLabel.text = "Enter large amount of text here";
        secondLabel.sizeToFit()
        self.view.addSubview(secondLabel)
        
        //Question - 4
        secondLabel.layer.opacity = 0.3
        secondLabel.layer.cornerRadius = 2
        
        //Question - 5
        let datePicker = UIDatePicker(frame: CGRect(x: 50, y: 250, width: 300, height: 300))
        datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: -1, to: Date())
        datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: 1, to: Date())
        self.view.addSubview(datePicker)

        //Qusetion - 6
        compareImage()
        
    }
    
    // Questio - 6
    func compareImage(){
        if (image1.image?.isEqual(image2.image))! {
            imageResult.text = "Images are same"
        }
        else{
            imageResult.text = "Images are not same"
        }
    }
    
    //Question - 9
    
    @IBAction func alertForText(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Add New Name", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Second Name"
        }
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            let secondTextField = alertController.textFields![1] as UITextField
          
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            (action : UIAlertAction!) -> Void in })
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter First Name"
        }

        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func NextScreen(_ sender: Any) {
        performSegue(withIdentifier: "nextScreen", sender: self)
    }
    
}

