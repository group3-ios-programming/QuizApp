//
//  KetThuc_ViewController.swift
//  QuizApp-Group3
//
//  Created by Tran Nhat Tuan on 4/5/18.
//  Copyright © 2018 Tran Nhat Tuan. All rights reserved.
//

import UIKit

class KetThuc_ViewController: UIViewController {

    @IBOutlet weak var lb_DiemSo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lb_DiemSo.text = String(DiemSo)
        
        // Do any additional setup after loading the view.
    }
    
    
    // Quay lại trang màn hình ban đầu
    @IBAction func btn_ChoiLai(_ sender: Any) {
        let CMH_KT_BD = storyboard?.instantiateViewController(withIdentifier: "ViewController_Storyboard") as! ViewController
        present(CMH_KT_BD, animated: true, completion: nil)
        
        // Cho số điểm bằng 0 lại
        DiemSo = 0
        
        
        
    }
    
    
    @IBAction func btn_Thoat(_ sender: Any) {
        exit(0);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
