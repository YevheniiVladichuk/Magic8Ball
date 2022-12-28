//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Yevhenii Vladichuk on 28/12/2022.
//

import UIKit
import SnapKit


@available(iOS 15.0, *)
class ViewController: UIViewController {
    let mainLabel = UILabel()
    let ballImageView = UIImageView()
    let shakeButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.02947380953, green: 0.2032513022, blue: 0.3498324156, alpha: 1)
        addElements()
    }
    
    func addElements(){
        view.addSubview(mainLabel)
        mainLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        mainLabel.text = "ASK YOUR QUESTION"
        mainLabel.font = UIFont(name: "Helvetica", size: 25)
        mainLabel.textAlignment = .center
        mainLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(45)
            make.right.equalToSuperview().inset(45)
            make.top.equalToSuperview().inset(125)
            make.height.equalTo(65)
        }
        
        view.addSubview(ballImageView)
        ballImageView.contentMode = .scaleAspectFill
        ballImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(225)
            make.width.equalTo(225)
        }
        ballImageView.image = #imageLiteral(resourceName: "ball1")
        
        view.addSubview(shakeButton)
        shakeButton.backgroundColor = #colorLiteral(red: 0, green: 0.2737439275, blue: 0.5233363509, alpha: 1)
        shakeButton.setTitle("shake", for: .normal)
        shakeButton.setTitleColor(.white, for: .normal)
        shakeButton.titleLabel?.font =  UIFont(name: "Helvetica Bold", size: 16)
        shakeButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().inset(125)
        }
        shakeButton.layer.cornerRadius = 15
        shakeButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        shakeButton.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        shakeButton.layer.masksToBounds = false
        shakeButton.layer.shadowRadius = 7.0
        shakeButton.layer.shadowOpacity = 0.5
        shakeButton.addTarget(self, action: #selector(shakeButtonTapped), for: .touchUpInside)
    }
    
    @objc func shakeButtonTapped(){
        let imagesArray = [#imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball4")]
        ballImageView.image = imagesArray.randomElement()
    }
    
    
}

