//
//  ViewController.swift
//  Constraints
//
//  Created by Apple on 05/10/19.
//  Copyright © 2019 appzoo. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {

}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat","Horse", "Cow", "Camel", "Sheep", "Goat","Horse", "Cow", "Camel", "Sheep", "Goat"]
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    @IBOutlet var tableHeader: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadHeader(higtValue: 300)
    }
    
    @IBAction func addaction(_ sender: Any) {
        loadHeader(higtValue: 200)
    }
    
    func loadHeader(higtValue: CGFloat) {
        tableHeader.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: higtValue)
        tableView.tableHeaderView = tableHeader
    }
    
    // MARK: Tableview Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MyCustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MyCustomCell
        cell.textLabel?.text = self.animals[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}

