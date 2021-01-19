//
//  EditViewController.swift
//  lecture3DemoSimpleApp
//
//  Created by Miras Alimov on 10.01.2021.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var itemText: UITextField!
    //@IBOutlet weak var itemDate: UITextField!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var itemDate: UIDatePicker!
    var editCallback: ((_ itemText: String, _ itemDate: Date) -> ())?
    var oldText = ""
    var oldDate = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemText.text = oldText
        itemDate.date = oldDate
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func editItem(_ sender: Any) {
        guard let text = itemText.text, text != "" else {
            editCallback?("no data", itemDate.date)
            navigationController?.popViewController(animated: true)
            return
        }
        editCallback?(text, itemDate.date)
        navigationController?.popViewController(animated: true)
    }


}
