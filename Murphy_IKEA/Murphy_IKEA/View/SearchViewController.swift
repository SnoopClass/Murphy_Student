//
//  SearchViewController.swift
//  Murphy_IKEA
//
//  Created by Somin Park on 2022/10/02.
//

import UIKit

final class SearchViewController: UIViewController {

    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private var safeArea: UILayoutGuide {
        get { self.view.safeAreaLayoutGuide }
    }
    private let titleLabel = UILabel()
    private let searchBarButtonView: SearchBarButton = {
        let view = SearchBarButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy private var stackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [recentView, searchProductView, campaignView, popularView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 80
        return stackView
    }()
    private let recentView = UIView()
    private let searchProductView = UIView()
    private let campaignView = UIView()
    private let popularView = UIView()
    private let infoView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    private func configureView() {
        view.backgroundColor = .systemBackground
        configureScrollView()
        configureTitle()
        configureSearchBarButton()
        configureStackView()
        configureRecentView()
        configureSearchProductView()
        configureCampaignView()
        configurePopularView()
        configureInfoView()
    }
    
    private func configureScrollView() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.alwaysBounceVertical = true
        NSLayoutConstraint.activate([
            scrollView.frameLayoutGuide.topAnchor.constraint(equalTo: safeArea.topAnchor),
            scrollView.frameLayoutGuide.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            scrollView.frameLayoutGuide.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            scrollView.frameLayoutGuide.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ])
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        ])
    }
    
    private func configureTitle() {
        titleLabel.text = "검색"
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    private func configureSearchBarButton() {
        contentView.addSubview(searchBarButtonView)
        NSLayoutConstraint.activate([
            searchBarButtonView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            searchBarButtonView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            searchBarButtonView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            searchBarButtonView.heightAnchor.constraint(equalToConstant: 40),
            searchBarButtonView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    private func configureStackView() {
        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: searchBarButtonView.bottomAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    private func configureRecentView() {
        recentView.translatesAutoresizingMaskIntoConstraints = false
        recentView.backgroundColor = .purple
        NSLayoutConstraint.activate([
            recentView.topAnchor.constraint(equalTo: stackView.topAnchor),
            recentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            recentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            recentView.heightAnchor.constraint(equalToConstant: 250),
            recentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    private func configureSearchProductView() {
        searchProductView.translatesAutoresizingMaskIntoConstraints = false
        searchProductView.backgroundColor = .green
        NSLayoutConstraint.activate([
            searchProductView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            searchProductView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            searchProductView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            searchProductView.heightAnchor.constraint(equalToConstant: 780)
        ])
    }
    
    private func configureCampaignView() {
        campaignView.translatesAutoresizingMaskIntoConstraints = false
        campaignView.backgroundColor = .orange
        NSLayoutConstraint.activate([
            campaignView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            campaignView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            campaignView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            campaignView.heightAnchor.constraint(equalToConstant: 570)
        ])
    }
    
    private func configurePopularView() {
        popularView.translatesAutoresizingMaskIntoConstraints = false
        popularView.backgroundColor = .blue
        NSLayoutConstraint.activate([
            popularView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            popularView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            popularView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            popularView.heightAnchor.constraint(equalToConstant: 830)
        ])
    }
    
    private func configureInfoView() {
        contentView.addSubview(infoView)
        infoView.translatesAutoresizingMaskIntoConstraints = false
        infoView.backgroundColor = .systemPink
        NSLayoutConstraint.activate([
            infoView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 80),
            infoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            infoView.heightAnchor.constraint(equalToConstant: 730),
            infoView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
