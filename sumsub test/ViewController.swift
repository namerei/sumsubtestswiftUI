//
//  ViewController.swift
//  sumsub test_UIKIT
//
//  Created by Namerei on 28.04.24.
//

import UIKit
import IdensicMobileSDK
import CryptoKit
import CommonCrypto

class ViewController: UIViewController {
    
    let backend = YourBackend()
//    var user = YourUser(userId: UUID().uuidString)
    var user = YourUser(userId: UUID().uuidString)
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .yellow
        
//        startIdentify()
        // Создаем кнопку
        let button = UIButton(type: .system)
        button.setTitle("Нажми меня", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // Устанавливаем размер и положение кнопки
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.center = view.center
        
        // Добавляем кнопку на экран
        view.addSubview(button)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        startIdentify()
//    }
    
    @objc func buttonTapped() {
        startIdentify()
    }
    
    func startIdentify() {
        IdentityVerification.launch(
            from: self,
            for: user,
            locale: "ru"
        )
    }
}
