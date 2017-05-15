//
//  ViewController.swift
//  SwiftToast
//
//  Created by Daniele Boscolo on 04/04/17.
//  Copyright © 2017 Daniele Boscolo. All rights reserved.
//

import UIKit
import SwiftToast

class MainViewController: UIViewController {
    static let simpleCellIdentifier = "simpleCellIdentifier"
    
    @IBOutlet weak var tableView: UITableView!
    
    struct Section {
        let rows: [Row]
        let headerTitle: String
    }
    
    struct Row {
        let title: String
        let toast: SwiftToast
    }
    
    var sections: [Section] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sections = [Section(rows: firstSectionRows(), headerTitle: "Examples"), Section(rows: secondSectionRows(), headerTitle: "Status bar")]
    }
    
    func firstSectionRows() -> [Row] {
        // Navigation bar
        return [
            Row(title: "Only message", toast: SwiftToast(
                text: "Brasil, sil, silllllll. Ole Ole Oláaaa. É pentaaa, é pentaaaa! uhulll :)",
                image: UIImage(),
                backgroundColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),
                textColor: UIColor.green,
                font: UIFont.boldSystemFont(ofSize: 18.0),
                duration: 2.0,
                statusBarStyle: .lightContent,
                target: nil,
                style: .navigationBar)),
            
            
            Row(title: "Message and image", toast: SwiftToast(
                text: "Alert!",
                image: #imageLiteral(resourceName: "icAlert"),
                backgroundColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1),
                textColor: UIColor.white,
                font: UIFont.boldSystemFont(ofSize: 30.0),
                duration: 2.0,
                statusBarStyle: .lightContent,
                target: nil,
                style: .navigationBar)),
            
            Row(title: "Dark status bar", toast: SwiftToast(
                text: "See the dark status bar. Cute right?",
                image: #imageLiteral(resourceName: "icAlert"),
                backgroundColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),
                textColor: UIColor.black,
                font: UIFont.boldSystemFont(ofSize: 13.0),
                duration: 4.0,
                statusBarStyle: .default,
                target: nil,
                style: .navigationBar)),
            
            Row(title: "Very long text", toast: SwiftToast(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                image: nil,
                backgroundColor: #colorLiteral(red: 0.723318932, green: 0.7605775616, blue: 0.8339516754, alpha: 1),
                textColor: UIColor.black,
                font: UIFont.boldSystemFont(ofSize: 13.0),
                duration: 9.0,
                statusBarStyle: .default,
                target: nil,
                style: .navigationBar)),
            
            Row(title: "Very long text with image", toast: SwiftToast(
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                image: #imageLiteral(resourceName: "icAlert"),
                backgroundColor: #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1),
                textColor: UIColor.white,
                font: UIFont.systemFont(ofSize: 14.0),
                duration: 9.0,
                statusBarStyle: .lightContent,
                target: nil,
                style: .navigationBar)),
            
            Row(title: "Force user interaction", toast: SwiftToast(
                text: "Click here to dismiss",
                image: #imageLiteral(resourceName: "icAlert"),
                backgroundColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1),
                textColor: UIColor.white,
                font: UIFont.boldSystemFont(ofSize: 13.0),
                duration: nil,
                statusBarStyle: .lightContent,
                target: nil,
                style: .navigationBar)),
            
            Row(title: "Force user interaction with delegate", toast: SwiftToast(
                text: "Click here to dismiss",
                image: #imageLiteral(resourceName: "icAlert"),
                backgroundColor: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1),
                textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                font: UIFont.boldSystemFont(ofSize: 18.0),
                duration: nil,
                statusBarStyle: .lightContent,
                target: self,
                style: .navigationBar))
        ]
    }
    
    func secondSectionRows() -> [Row] {
        return [
            Row(title: "Quick alert", toast: SwiftToast(
                text: "Quick alert",
                image: nil,
                backgroundColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),
                textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                font: UIFont.boldSystemFont(ofSize: 12.0),
                duration: 1.0,
                statusBarStyle: .lightContent,
                target: nil,
                style: .statusBar)),
            
            Row(title: "Quick alert", toast: SwiftToast(
                text: "Quick alert",
                image: #imageLiteral(resourceName: "icAlert"),
                backgroundColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1),
                textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                font: UIFont.boldSystemFont(ofSize: 12.0),
                duration: 1.0,
                statusBarStyle: .lightContent,
                target: nil,
                style: .statusBar))
        ]
    }
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].headerTitle
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == sections.count - 1 {
            return "\nCreated by Daniele Boscolo\nFor more: github/damboscolo\n\n"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: MainViewController.simpleCellIdentifier)
        let row = sections[indexPath.section].rows[indexPath.row]
        cell.textLabel?.text = row.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toast = sections[indexPath.section].rows[indexPath.row].toast
        SwiftToastController.shared.present(toast)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK:- SwiftToastDelegate

extension MainViewController: SwiftToastDelegate {
    func swiftToastDidTouchUpInside(_ swiftToast: SwiftToast) {
        let alert = UIAlertController(title: "Alert", message: "SwiftToastDidTouchUpInside delegate", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        present(alert, animated: true)
    }
}
