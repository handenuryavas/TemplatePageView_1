//
//  HomeViewController.swift
//  Template-1
//
//  Created by Hande Nur Yavaş on 5.06.2023.
//

import UIKit

class HomeViewController: UIViewController
{
    private var homeFeedTable: UITableView {
        
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
        
    }

    @IBOutlet weak var locationField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        
        homeFeedTable.delegate = self
        homeFeedTable.frame = view.bounds
        
        setupSearchTextField()

    }
    
    
    func setupSearchTextField()
    {
        locationField.leftViewMode = .always
        let imageView = UIImageView()
        let image = UIImage(named: "icon")
        imageView.image = image
        imageView.frame = CGRect(x: 5, y: 0, width: locationField.frame.height, height: locationField.frame.height)
        locationField.leftView = imageView
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
}
    
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell
    }
    
   
    
        
}
    
        
        
  

