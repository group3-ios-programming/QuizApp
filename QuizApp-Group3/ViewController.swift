//
//  ViewController.swift
//  QuizApp-Group3
//
//  Created by Tran Nhat Tuan on 4/5/18.
//  Copyright © 2018 Tran Nhat Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btn_BatDau(_ sender: Any) {
        let CMH_BD_CH = storyboard?.instantiateViewController(withIdentifier: "StoryBoard_CauHoi") as! CauHoi_ViewController
        present(CMH_BD_CH, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

