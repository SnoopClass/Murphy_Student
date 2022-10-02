//
//  SearchViewController.swift
//  Murphy_IKEA
//
//  Created by Somin Park on 2022/10/02.
//

import UIKit

class SearchViewController: UIViewController {

    let scrollView = UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configureScrollView()
        configureTitle()
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
        let titleLabel = UILabel()
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
}
