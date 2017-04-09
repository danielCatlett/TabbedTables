//  BowsViewController.swift
//  TabbedTables
//
//  Created by Daniel Catlett on 4/9/17.
//  Copyright © 2017 Daniel Catlett. All rights reserved.

import UIKit

class BowsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    private let bows = ["Ancient Bow", "Bow of Light", "Great Eagle Bow", "Royal Guard's Bow", "Savage Lynel Bow"]
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
        return bows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        
        cell?.textLabel?.text = bows[indexPath.row]
        return cell!
    }

}
