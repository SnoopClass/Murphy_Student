//
//  SearchBarButtonView.swift
//  Murphy_IKEA
//
//  Created by Somin Park on 2022/10/04.
//

import UIKit

final class SearchBarButton: UIView {
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "magnifyingglass")
        view.tintColor = .gray
        return view
    }()
    
    private let descriptionLabal: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "무엇을 찾고 있나요?"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required convenience init?(coder: NSCoder) {
        self.init(coder: coder)
        setupLayout()
    }
    
    private func setupLayout() {
        addSubview(imageView)
        addSubview(descriptionLabal)
        layer.cornerRadius = 20
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 15),
            imageView.heightAnchor.constraint(equalToConstant: 15),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            descriptionLabal.centerYAnchor.constraint(equalTo: centerYAnchor),
            descriptionLabal.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10)
        ])
    }
}
