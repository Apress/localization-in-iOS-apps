//
//  ViewController.swift
//  Localization-iOS
//
//  Created by Aman Aggarwal on 05/09/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblLanguage: UILabel!
    @IBOutlet weak var btnCHangeLanguage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblHeader.text = LocalizationSystem.sharedInstance.localizedStringForKey(key:"header_text" , comment: "")
        lblLanguage.text = LocalizationSystem.sharedInstance.localizedStringForKey(key:"language_text" , comment: "")
        btnCHangeLanguage.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key:"button_text" , comment: ""), for: .normal)
        
    }
    
    
    @IBAction func navigateToLanguageVC(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LangageVCViewController") as! LangageVCViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



