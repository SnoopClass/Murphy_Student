//
//  SearchViewController.swift
//  Murphy_IKEA
//
//  Created by Somin Park on 2022/10/02.
//

import UIKit

public class SearchBarButton: UIView {
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "magnifyingglass")
        view.tintColor = .gray
        return view
    }()
    
    let descriptionLabal: UILabel = {
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
    
    func setupLayout() {
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

class SearchViewController: UIViewController {

    let scrollView = UIScrollView()
    let titleLabel = UILabel()
    let searchBarButtonView: SearchBarButton = {
        let view = SearchBarButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configureScrollView()
        configureTitle()
        configureSearchBarButton()
    }
    
    func configureScrollView() {
        self.view.addSubview(scrollView)
        scrollView.backgroundColor = .yellow
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func configureTitle() {
        titleLabel.text = "검색"
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(titleLabel)
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 25),
            titleLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10)
        ])
    }
    
    func configureSearchBarButton() {
        scrollView.addSubview(searchBarButtonView)
        NSLayoutConstraint.activate([
            searchBarButtonView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            searchBarButtonView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            searchBarButtonView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 10),
            searchBarButtonView.heightAnchor.constraint(equalToConstant: 40),
            searchBarButtonView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
}
