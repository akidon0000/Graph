//
//  ScatterChartViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class ScatterChartViewController: UIViewController {
    @IBAction func buckButton(_ sender: Any) {
        let vc = R.storyboard.main.mainvc()!
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    func setData(){
        let graphWidth = self.view.frame.width
        let graphHeight = self.view.frame.height - 65
        
        let rect = CGRect(x:0, y: 65, width: graphWidth, height: graphHeight)
        let chartView = ScatterChartView(frame: rect)
        let entries = [
            BarChartDataEntry(x: 1, y: 10),
            BarChartDataEntry(x: 2, y: 15),
            BarChartDataEntry(x: 3, y: 9),
            BarChartDataEntry(x: 4, y: 13),
        ]
        
        let set = ScatterChartDataSet(entries: entries, label: "Data")
        chartView.data = ScatterChartData(dataSet: set)
        view.addSubview(chartView)
    }
    

}
