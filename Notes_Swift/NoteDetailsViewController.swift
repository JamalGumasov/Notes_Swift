//
//  NoteDetailsViewController.swift
//  Notes_Swift
//
//  Created by Джамал Гумасов on 26.07.2022.
//

import UIKit

class NoteDetailsViewController: UIViewController {
    
    @IBOutlet weak var noteBody: UITextView!
    var text: String = ""
    var masterView:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteBody.text = text
        self.navigationItem.largeTitleDisplayMode = .never
    }
    func setText(data:String) {
        text = data
        if isViewLoaded {
            noteBody.text = text
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newNoteText = noteBody.text
        noteBody.resignFirstResponder()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        noteBody.becomeFirstResponder()
    }


}
