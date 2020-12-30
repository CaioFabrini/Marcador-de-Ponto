//
//  ViewControllerScreen.swift
//  viewCodeTest
//
//  Created by Caio on 18/12/20.
//

import Foundation
import UIKit
import SnapKit

class LoginScreen : UIView{
    

    let scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .green
        scrollView.autoresizingMask = .flexibleHeight
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: UIScreen.main.bounds.height+100)
        return scrollView
    }()
    
    let testView:UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let headerLabel:UILabel = {
        let headerLabel = UILabel()
        headerLabel.text = "Ponto Eletrônico"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 26)
        headerLabel.textColor = .black
     //   headerLabel.backgroundColor = .red
        return headerLabel
    }()
    
    let headerImage:UIImageView = {
        let headerImage = UIImageView()
        headerImage.image = UIImage(named: "headerImage")
        headerImage.contentMode = .scaleToFill
     //   headerImage.backgroundColor = .blue
        return headerImage
    }()
    
    let acessoLabel:UILabel = {
        let acessoLabel = UILabel()
        acessoLabel.text = "Acesso"
        acessoLabel.font = UIFont.boldSystemFont(ofSize: 18)
        acessoLabel.textColor = .black
//        acessoLabel.backgroundColor = .red
        return acessoLabel
    }()
    
    let subViewAcessoView:UIView = {
        let subViewAcessoView = UIView()
        subViewAcessoView.clipsToBounds = true
        subViewAcessoView.layer.cornerRadius = 2
        subViewAcessoView.backgroundColor = .blue
        return subViewAcessoView
    }()
    
    let bemVindoLabel:UILabel = {
        let bemVindoLabel = UILabel()
        bemVindoLabel.text = "Olá,seja bem vindo!"
        bemVindoLabel.font = UIFont.systemFont(ofSize: 16)
        bemVindoLabel.textColor = .lightGray
    //    bemVindoLabel.backgroundColor = .green
        return bemVindoLabel
    }()
    
    //MARK: - LOGIN
    
    let loginLabel:UILabel = {
        let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.font = UIFont.boldSystemFont(ofSize: 16)
        loginLabel.textColor = .black
//        loginLabel.backgroundColor = .red
        return loginLabel
    }()
    
    let loginTextField:UITextField = {
        let loginTextField = UITextField()
        loginTextField.placeholder = "Digite seu email"
        loginTextField.keyboardType = .emailAddress
        //loginTextField.backgroundColor = .red
        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 6
        loginTextField.layer.borderWidth = 1
        loginTextField.layer.borderColor = UIColor.lightGray.cgColor
        return loginTextField
    }()
    
    let button:UIButton = {
       let button = UIButton()
        button.setTitle("Clique aqui", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
  
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
    
       
        
        
        backgroundColor = .white
//        addSubview(button)
//        addSubview(headerLabel)
//        addSubview(headerImage)
//        addSubview(acessoLabel)
//        addSubview(subViewAcessoView)
//        addSubview(bemVindoLabel)
//        addSubview(loginLabel)
//        addSubview(loginTextField)
       scrollView.addSubview(testView)
        //testView.addSubview(button)
        addSubview(scrollView)
        
        
        configScrollView()
        configView()
      //  configButton()
//        configHeaderLabel()
//        configHeaderImage()
//        configAcessoLabel()
//        configSubViewAcessoView()
//        configBemVindoLabel()
//        configLoginLabel()
//        configLoginTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configScrollView(){
        self.scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
    
    func configView(){
        self.testView.snp.makeConstraints { (make) in
            make.height.equalTo(100)
            make.width.equalTo(100)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    
    func configHeaderLabel(){
        self.headerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(26)
        }
    }
    
    func configHeaderImage(){
        self.headerImage.snp.makeConstraints { (make) in
            make.top.equalTo(headerLabel.snp.bottom).offset(15)
            make.left.right.equalToSuperview()
            make.height.equalTo(200)
        }
    }
    
    func configAcessoLabel(){
        self.acessoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(headerImage.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.width.equalTo(150)
            make.height.equalTo(26)
        }
    }
    
    func configSubViewAcessoView(){
        self.subViewAcessoView.snp.makeConstraints { (make) in
            make.top.equalTo(acessoLabel.snp.bottom).offset(2)
            make.left.equalTo(acessoLabel.snp.left)
            make.width.equalTo(acessoLabel.snp.width)
            make.height.equalTo(4)
        }
    }
    
    
    func configBemVindoLabel(){
        self.bemVindoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(subViewAcessoView.snp.bottom).offset(10)
            make.left.equalTo(acessoLabel.snp.left)
            make.width.equalTo(150)
            make.height.equalTo(16)
        }
    }
    
    
    func configLoginLabel(){
        self.loginLabel.snp.makeConstraints { (make) in
            make.top.equalTo(bemVindoLabel.snp.bottom).offset(20)
            make.left.equalTo(acessoLabel.snp.left)
            make.width.equalTo(150)
            make.height.equalTo(20)
        }
    }
    
    
    func configLoginTextField(){
        self.loginTextField.snp.makeConstraints { (make) in
            make.top.equalTo(loginLabel.snp.bottom).offset(20)
            make.left.equalTo(acessoLabel.snp.left)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }

    func configButton(){
        self.button.snp.makeConstraints { (make) in
            make.left.equalTo(20)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(50)
            make.top.equalTo(400)
//            make.bottom.equalTo(scrollView.snp.bottom).offset(50)
        }
    }
    
    
    
    
    
}
