//
//  ViewController.swift
//  Text-FieldCreate
//
//  Created by Dilara Elçioğlu on 19.12.2022.
//

import UIKit
import SnapKit

class TextFieldCreate: UIViewController {

    lazy var telText = UITextField()
    lazy var mailText = UITextField()
    lazy var msgText = UITextField()
    lazy var sendButton = UIButton()
    lazy var telLabel = UILabel()
    lazy var mailLabel = UILabel()
    lazy var msgLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI(){
        view.addSubview(telText)
        view.addSubview(mailText)
        view.addSubview(msgText)
        view.addSubview(sendButton)
        view.addSubview(telLabel)
        view.addSubview(mailLabel)
        view.addSubview(msgLabel)
        
        designView()
        
        makeTelText()
        makeMailText()
        makeMsgText()
        makeSendButton()
        makeTelLabel()
        makeMailLabel()
        makeMsgLabel()

        sendButton.addTarget(self, action: #selector(myFunc), for: .touchUpInside)
        
    }
    
    @objc func myFunc(){
        telLabel.text = telText.text
        mailLabel.text = mailText.text
        msgLabel.text = msgText.text
    }
    
    private func designView(){
        DispatchQueue.main.async {
            
            self.telText.backgroundColor = .yellow
            self.mailText.backgroundColor = .yellow
            self.msgText.backgroundColor = .yellow
            self.sendButton.backgroundColor = .blue
            self.telLabel.backgroundColor = .red
            self.mailLabel.backgroundColor = .red
            self.msgLabel.backgroundColor = .red
            
            self.telText.textAlignment = .center
            self.mailText.textAlignment = .center
            self.msgText.textAlignment = .center
            
            self.telLabel.textAlignment = .center
            self.mailLabel.textAlignment = .center
            self.msgLabel.textAlignment = .center

            self.telText.placeholder = "TELEFON"
            self.mailText.placeholder = "MAIL"
            self.msgText.placeholder = "MESAJ"
            
            self.telLabel.text = "TELEFON"
            self.mailLabel.text = "MAIL"
            self.msgLabel.text = "MESAJ"
            
            self.sendButton.setTitle("GONDER", for: .normal)
        }
    }
    
}



extension TextFieldCreate {
    private func makeTelText(){
        telText.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.height.equalTo(20)
            make.width.equalTo(200)
            make.centerXWithinMargins.equalToSuperview()
            
        }
    }
    
    private func makeMailText(){
        mailText.snp.makeConstraints { make in
            make.top.equalTo(telText.snp.bottom).offset(20)
            make.height.equalTo(20)
            make.width.equalTo(200)
            make.centerXWithinMargins.equalToSuperview()

        }
    }
    
    private func makeMsgText(){
        msgText.snp.makeConstraints { make in
            make.top.equalTo(mailText.snp.bottom).offset(20)
            make.height.equalTo(20)
            make.width.equalTo(200)
            make.centerXWithinMargins.equalToSuperview()
        }
    }
 
    private func makeSendButton(){
        sendButton.snp.makeConstraints { make in
            make.top.equalTo(msgText.snp.bottom).offset(20)
            make.height.equalTo(30)
            make.width.equalTo(100)
            make.centerXWithinMargins.equalToSuperview()
        }
    }
    
    private func makeTelLabel(){
        telLabel.snp.makeConstraints { make in
            make.top.equalTo(sendButton.snp.bottom).offset(20)
            make.height.equalTo(20)
            make.width.equalTo(200)
            make.centerXWithinMargins.equalToSuperview()
        }
    }
    
    private func makeMailLabel(){
        mailLabel.snp.makeConstraints { make in
            make.top.equalTo(telLabel.snp.bottom).offset(20)
            make.height.equalTo(20)
            make.width.equalTo(200)
            make.centerXWithinMargins.equalToSuperview()
        }
    }
    
    private func makeMsgLabel(){
        msgLabel.snp.makeConstraints { make in
            make.top.equalTo(mailLabel.snp.bottom).offset(20)
            make.height.equalTo(20)
            make.width.equalTo(200)
            make.centerXWithinMargins.equalToSuperview()
        }
    }
    

}

