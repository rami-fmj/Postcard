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
    @IBOutlet weak var lblName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMail(sender: UIButton) {
        //Chequeo de condiciones.
        if sender.backgroundColor==UIColor.redColor() {
            sender.backgroundColor=UIColor.orangeColor()
            lblMessage.textColor=UIColor.redColor()
            lblName.textColor=UIColor.blueColor()
        }
        else
        {
            sender.backgroundColor=UIColor.redColor()
            lblMessage.textColor=UIColor.blueColor()
            lblName.textColor=UIColor.grayColor()
            
        }
        lblMessage.text=txtMessage.text
        lblName.text=txtName.text
        lblMessage.hidden=false
        lblName.hidden=false
        txtMessage.text=""
        txtName.text=""
        txtMessage.resignFirstResponder()
        txtName.resignFirstResponder()
        mailButton.setTitle("Correo Enviado", forState: UIControlState.Normal)
    }

}
