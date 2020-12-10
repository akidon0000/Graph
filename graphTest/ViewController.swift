//
//  ViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/06.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var cellList:[String] = ["折れ線グラフ","棒グラフ","横棒グラフ","円グラフ","点グラフ","バブルチャート","レーダーチャート","ロウソク足"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch cellList[indexPath.row] {
        case "折れ線グラフ":
            let vc = R.storyboard.lineGraphView.linevc()!
            self.present(vc, animated: true, completion: nil)
        case "棒グラフ":
            let vc = R.storyboard.barChartView.barvc()!
            self.present(vc, animated: true, completion: nil)
        case "横棒グラフ":
            let vc = R.storyboard.horizontalBarChart.horiBarvc()!
            self.present(vc, animated: true, completion: nil)
        case "円グラフ":
            let vc = R.storyboard.horizontalBarChart.horiBarvc()!
            self.present(vc, animated: true, completion: nil)
        case "点グラフ":
            let vc = R.storyboard.horizontalBarChart.horiBarvc()!
            self.present(vc, animated: true, completion: nil)
        case "バブルチャート":
            let vc = R.storyboard.horizontalBarChart.horiBarvc()!
            self.present(vc, animated: true, completion: nil)
        case "レーダーチャート":
            let vc = R.storyboard.horizontalBarChart.horiBarvc()!
            self.present(vc, animated: true, completion: nil)
        case "ロウソク足":
            let vc = R.storyboard.horizontalBarChart.horiBarvc()!
            self.present(vc, animated: true, completion: nil)
        default:
            print("error")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableCells", for: indexPath)
        cell.textLabel!.text = cellList[Int(indexPath.item)]
        return cell
    }
}

