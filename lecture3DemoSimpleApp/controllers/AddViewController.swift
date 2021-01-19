//
//  AddViewController.swift
//  lecture3DemoSimpleApp
//
//  Created by Miras Alimov on 18.01.2021.
//

import UIKit

class AddViewController: UIViewController {


    @IBOutlet weak var itemDate: UIDatePicker!
    @IBOutlet weak var itemText: UITextField!
    
    var delegate: SecondViewControllerDelegate?
    var addCallback: ((_ item: ToDoItem)->())?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func addItem(_ sender: Any) {
        
        guard let text = itemText.text, text != "" else {
            addCallback?(ToDoItem(id: -1, title: "Empty Title", deadLine: itemDate.date, subTitle: "Empty", isActive: false))
            navigationController?.popViewController(animated: true)
            return
        }
        addCallback?(ToDoItem(id: delegate?.getCounterId(), title: text, deadLine: itemDate.date, subTitle: "Empty", isActive: true))
        navigationController?.popViewController(animated: true)
    }


}
