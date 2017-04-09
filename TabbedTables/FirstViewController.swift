//  FirstViewController.swift
//  TabbedTables
//
//  Created by Daniel Catlett on 4/8/17.
//  Copyright © 2017 Daniel Catlett. All rights reserved.

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    private let swords = ["Biggoron's Sword", "The Master Sword", "Savage Lynel Sword", "Sword of the Six Sages"]
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
        return swords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        
        cell?.textLabel?.text = swords[indexPath.row]
        return cell!
    }

}

