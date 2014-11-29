//
//  ViewController.swift
//  Postcard
//
//  Created by Ramiro Mosquera on 23/11/14.
//  Copyright (c) 2014 Ramiro Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMail(sender: UIButton) {
        if sender.backgroundColor==UIColor.redColor() {
            sender.backgroundColor=UIColor.orangeColor()
            lblMessage.textColor=UIColor.redColor()
        }
        else
        {
            sender.backgroundColor=UIColor.redColor()
            lblMessage.textColor=UIColor.blueColor()
            
        }
        lblMessage.text=txtMessage.text
        lblMessage.hidden=false
        txtMessage.text=""
        txtMessage.resignFirstResponder()
        mailButton.setTitle("Correo Enviado", forState: UIControlState.Normal)
    }

}
