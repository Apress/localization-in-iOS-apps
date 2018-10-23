//
//  LangageVCViewController.swift
//  Localization-iOS
//
//  Created by Aman Aggarwal on 06/09/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class LangageVCViewController: UIViewController {
    
    @IBOutlet weak var btnBack:UIButton!
    @IBOutlet weak var lblSelectLanguage: UILabel!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var btnArabic: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    //btnBack.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "btn_back", comment: ""), for: .normal)
       
//        if LocalizationSystem.sharedInstance.getLanguage() == "en" {
//            self.btnBack.setImage(UIImage(named:"Backen"), for: .normal)
//        }
       
        self.btnBack.setImage(UIImage(contentsOfFile: LocalizationSystem.sharedInstance.localizedImagePathForImg(imagename: "Back", type: "png")), for: .normal)
        self.btnEnglish.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "btn_english", comment: ""), for: .normal)
        btnArabic.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "btn_arabic", comment: ""), for: .normal)
        lblSelectLanguage.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "select_language", comment: "")
        
    }
    
    //MARK:- IBActions
    
    @IBAction func navigateBack(_ sender: UIButton) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func setAppLanguageEnglish(_ sender: UIButton) {
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
        UIView.appearance().semanticContentAttribute = .forceLeftToRight
        UINavigationBar.appearance().semanticContentAttribute = .forceLeftToRight
        restartApp()
        
    }
    
    @IBAction func setAppLanguageArabic(_ sender: UIButton) {
        LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
        UINavigationBar.appearance().semanticContentAttribute = .forceRightToLeft
        restartApp()
    }
    
    func restartApp() {
        let rootNav = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = rootNav
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
