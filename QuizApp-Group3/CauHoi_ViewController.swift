//
//  CauHoi_ViewController.swift
//  QuizApp-Group3
//
//  Created by Tran Nhat Tuan on 4/5/18.
//  Copyright © 2018 Tran Nhat Tuan. All rights reserved.
//

import UIKit

var DiemSo : Int = 0 // Biến toàn cục 
class CauHoi_ViewController: UIViewController {

    @IBOutlet weak var lb_SoDiem: UILabel!
    @IBOutlet weak var lb_CauHoiSo: UILabel!
    @IBOutlet weak var lb_CauHoi: UILabel!
    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var lb_KetQua: UILabel!
    @IBOutlet weak var btn_Next: UIButton!
    
    var Dem : Int = 1
    var CauTraLoiDung : String!
    
    var CauHoiHienTai : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lb_SoDiem.text = "0" // Khởi tạo số điểm bằng 0
        lb_CauHoiSo.text = "1" // Câu hỏi đầu tiên
        Hide_KetQua() // ẩn kết quả và nút "Next"
        ChonCauHoi() // Gọi hàm load câu hỏi và đáp án
        // Do any additional setup after loading the view.
    }
    
    // Hàm ẩn kết quả
    func Hide_KetQua(){
        lb_KetQua.isHidden = true
        btn_Next.isHidden = true
    }
    
    // Hàm hiện kết quả
    func Show_KetQua(){
        lb_KetQua.isHidden = false
        btn_Next.isHidden = false
    }
    
    func ChonCauHoi() {
        switch (Dem){
            case 1:
                lb_CauHoi.text = " 1 + 1 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "2"
                
                break
            case 2:
                lb_CauHoi.text = " 2 + 2 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "1"
                
                break
            case 3:
                lb_CauHoi.text = " 3 + 3 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("6", for: UIControlState.normal)
                CauTraLoiDung = "4"
                
                break
            case 4:
                lb_CauHoi.text = " 4 + 4 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("8", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "3"
                
                break
            case 5:
                lb_CauHoi.text = " 5 + 5 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("10", for: UIControlState.normal)
                CauTraLoiDung = "4"
                
                break
            case 6:
                lb_CauHoi.text = " 6 + 6 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("12", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "2"
                
                break
            case 7:
                lb_CauHoi.text = " 7 + 7 = ? "
                btn_1.setTitle("14", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "1"
                
                break
            case 8:
                lb_CauHoi.text = " 8 + 8 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("16", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "3"
                
                break
            case 9:
                lb_CauHoi.text = " 9 + 9 = ? "
                btn_1.setTitle("18", for: UIControlState.normal)
                btn_2.setTitle("2", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "1"
                
                break
            case 10:
                lb_CauHoi.text = " 10 + 10 = ? "
                btn_1.setTitle("4", for: UIControlState.normal)
                btn_2.setTitle("20", for: UIControlState.normal)
                btn_3.setTitle("3", for: UIControlState.normal)
                btn_4.setTitle("5", for: UIControlState.normal)
                CauTraLoiDung = "2"
                
                break

        default:
            break
        }
        Dem += 1
        
    }
    
    // Các action của các button
    
    @IBAction func btn_1_Act(_ sender: Any) {
        Show_KetQua()
        let btn_1_ID : String = "1"
        if (btn_1_ID == CauTraLoiDung)
        {
            lb_KetQua.text = "Bạn đã trả lời đúng"
            DiemSo += 1
            lb_SoDiem.text = String(DiemSo)
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }
        else
        {
            lb_KetQua.text = "Bạn đã trả lời sai"
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }
    }
    
    @IBAction func btn_2_Act(_ sender: Any) {
        Show_KetQua()
        let btn_2_ID : String = "2"
        if (btn_2_ID == CauTraLoiDung)
        {
            lb_KetQua.text = "Bạn đã trả lời đúng"
            DiemSo += 1
            lb_SoDiem.text = String(DiemSo)
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }
        else
        {
            lb_KetQua.text = "Bạn đã trả lời sai"
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }

    }
    
    @IBAction func btn_3_Act(_ sender: Any) {
        Show_KetQua()
        let btn_3_ID : String = "3"
        if (btn_3_ID == CauTraLoiDung)
        {
            lb_KetQua.text = "Bạn đã trả lời đúng"
            DiemSo += 1
            lb_SoDiem.text = String(DiemSo)
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }
        else
        {
            lb_KetQua.text = "Bạn đã trả lời sai"
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }

    }
    
    
    @IBAction func btn_4_Act(_ sender: Any) {
        Show_KetQua()
        let btn_4_ID : String = "4"
        if (btn_4_ID == CauTraLoiDung)
        {
            lb_KetQua.text = "Bạn đã trả lời đúng"
            DiemSo += 1
            lb_SoDiem.text = String(DiemSo)
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }
        else
        {
            lb_KetQua.text = "Bạn đã trả lời sai"
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
        }

    }
    
    // Nút tiếp theo
    @IBAction func btn_Next_Act(_ sender: Any) {
        
        btn_1.isEnabled = true
        btn_2.isEnabled = true
        btn_3.isEnabled = true
        btn_4.isEnabled = true
        CauHoiHienTai += 1
        lb_CauHoiSo.text = String(CauHoiHienTai)
        // Giới hạn 10 câu hỏi, hết 10 câu hỏi sẽ qua màn hình kết thúc
        if (CauHoiHienTai < 11)
        {
            Hide_KetQua()
            ChonCauHoi()
        }
        else
        {
            let CMH_CH_KT = storyboard?.instantiateViewController(withIdentifier: "KetThuc_Storyboard") as! KetThuc_ViewController
            present(CMH_CH_KT, animated: true, completion: nil)
        }
        
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
