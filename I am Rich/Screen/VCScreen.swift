//
//  VCScreen.swift
//  I am Rich
//
//  Created by Fernanda Perovano on 23/06/24.
//

import UIKit

class VCScreen: UIView {

    lazy var richLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        label.text = "I am Rich"
        return label
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "patrick-tomasso-216284")
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        colorScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func colorScreen() {
        self.backgroundColor = UIColor(hex: "#1981CD")
        
    }
    
    private func addElements() {
        self.addSubview(self.richLabel)
        self.addSubview(self.logoAppImageView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
    
            richLabel.topAnchor.constraint(equalTo: topAnchor, constant: 156),
            richLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 124),
            richLabel.widthAnchor.constraint(equalToConstant: 173),
            richLabel.heightAnchor.constraint(equalToConstant: 48),
            
            logoAppImageView.topAnchor.constraint(equalTo: richLabel.bottomAnchor, constant: 157),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 72),
            logoAppImageView.widthAnchor.constraint(equalToConstant: 270),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 270)
            
            
        ])
    }

}
