//
//  ViewController.swift
//  test
//
//  Created by Bryan Hathaway on 9/10/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textViewButton: UIButton!

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        textField.returnKeyType = .search
        textField.enablesReturnKeyAutomatically = true

        textView.returnKeyType = .search
        textView.enablesReturnKeyAutomatically = true

        textField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTextViewButtonTapped(_ sender: Any) {
        textView.replace(textView.selectedTextRange!, withText: "Hello")
    }


    @IBAction func onTextFieldButtonTapped(_ sender: Any) {
        textField.replace(textField.selectedTextRange!, withText: "Hello")
    }
}

