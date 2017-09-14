//
//  ViewController.swift
//  To Do List
//
//  Created by Ethan Schmalz on 9/14/17.
//  Copyright © 2017 Ethan Schmalz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var toDoItem: ToDo?
    
    @IBOutlet weak var itemTextField: UITextField!

    @IBAction func cancelToToDoViewController(_ segue: UIStoryboardSegue) {
        self.performSegue(withIdentifier: "cancelToToDoViewController", sender: self)
        self.dismiss(animated: true, completion: nil)
    }
    

    
    
    @IBAction func dismissKeyboard(_ segue: UITapGestureRecognizer){
        itemTextField.resignFirstResponder()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "SaveToDoItem", let itemName = itemTextField.text{
            toDoItem = ToDo(item: itemName, done: false)
        }
    }
}

