//
//  SearchViewController.swift
//  Murphy_IKEA
//
//  Created by Somin Park on 2022/10/02.
//

import UIKit

class SearchViewController: UIViewController {

    let scrollView = UIScrollView()
    let contentView = UIView()
    private var safeArea: UILayoutGuide {
        get { self.view.safeAreaLayoutGuide }
    }
    let titleLabel = UILabel()
    let searchBarButtonView: SearchBarButton = {
        let view = SearchBarButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let recentView = UIView()
    let searchProductView = UIView()
    let campaignView = UIView()
    let popularView = UIView()
    let infoView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureView()
        
    }
    
    func configureView() {
        configureScrollView()
        configureTitle()
        configureSearchBarButton()
        configureRecentView()
        configureSearchProductView()
        configureCampaignView()
        configurePopularView()
        configureInfoView()
    }
    
    func configureScrollView() {
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
    
    func configureTitle() {
        titleLabel.text = "검색"
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10)
        ])
    }
    
    func configureSearchBarButton() {
        contentView.addSubview(searchBarButtonView)
        NSLayoutConstraint.activate([
            searchBarButtonView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            searchBarButtonView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            searchBarButtonView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            searchBarButtonView.heightAnchor.constraint(equalToConstant: 40),
            searchBarButtonView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    func configureRecentView() {
        contentView.addSubview(recentView)
        recentView.translatesAutoresizingMaskIntoConstraints = false
        recentView.backgroundColor = .purple
        NSLayoutConstraint.activate([
            recentView.topAnchor.constraint(equalTo: searchBarButtonView.bottomAnchor, constant: 40),
            recentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            recentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            recentView.heightAnchor.constraint(equalToConstant: 250),
            recentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
    
    func configureSearchProductView() {
        contentView.addSubview(searchProductView)
        searchProductView.translatesAutoresizingMaskIntoConstraints = false
        searchProductView.backgroundColor = .green
        NSLayoutConstraint.activate([
            searchProductView.topAnchor.constraint(equalTo: recentView.bottomAnchor, constant: 40),
            searchProductView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            searchProductView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            searchProductView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            searchProductView.heightAnchor.constraint(equalToConstant: 780)
        ])
    }
    
    func configureCampaignView() {
        contentView.addSubview(campaignView)
        campaignView.translatesAutoresizingMaskIntoConstraints = false
        campaignView.backgroundColor = .orange
        NSLayoutConstraint.activate([
            campaignView.topAnchor.constraint(equalTo: searchProductView.bottomAnchor, constant: 50),
            campaignView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            campaignView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            campaignView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            campaignView.heightAnchor.constraint(equalToConstant: 570)
        ])
    }
    
    func configurePopularView() {
        contentView.addSubview(popularView)
        popularView.translatesAutoresizingMaskIntoConstraints = false
        popularView.backgroundColor = .blue
        NSLayoutConstraint.activate([
            popularView.topAnchor.constraint(equalTo: campaignView.bottomAnchor, constant: 60),
            popularView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            popularView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            popularView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            popularView.heightAnchor.constraint(equalToConstant: 830)
        ])
    }
    
    func configureInfoView() {
        contentView.addSubview(infoView)
        infoView.translatesAutoresizingMaskIntoConstraints = false
        infoView.backgroundColor = .systemPink
        NSLayoutConstraint.activate([
            infoView.topAnchor.constraint(equalTo: popularView.bottomAnchor, constant: 50),
            infoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            infoView.heightAnchor.constraint(equalToConstant: 730),
            infoView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
