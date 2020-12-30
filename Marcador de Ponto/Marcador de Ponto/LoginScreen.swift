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
        headerImage.contentMode = .scaleAspectFill
     //   headerImage.backgroundColor = .blue
        return headerImage
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
        addSubview(button)
        addSubview(headerLabel)
        addSubview(headerImage)
        configButton()
        configHeaderLabel()
        configHeaderImage()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configHeaderLabel(){
        self.headerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide).inset(25)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(26)
        }
    }
    
    func configHeaderImage(){
        self.headerImage.snp.makeConstraints { (make) in
            make.top.equalTo(headerLabel.snp.bottom).offset(15)
            make.left.right.equalToSuperview()
            make.height.equalTo(250)
        }
    }
    
    func configButton(){
        self.button.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(-40)
        }
    }
    
    
    
}
