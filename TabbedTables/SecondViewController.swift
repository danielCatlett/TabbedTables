//  SecondViewController.swift
//  TabbedTables
//
//  Created by Daniel Catlett on 4/8/17.
//  Copyright © 2017 Daniel Catlett. All rights reserved.

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    private let claymores = ["Edge of Duality", "Royal Claymore", "The Royal Guard's Claymore"]
    let simpleTableIdentifier = "SimpleTableIdentifier"

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    //MARK: - Table View Data Source Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return claymores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        
        cell?.textLabel?.text = claymores[indexPath.row]
        return cell!
    }

}

