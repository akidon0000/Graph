//
//  RadarChartViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class RadarChartViewController: UIViewController {
    
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
        let chartView = RadarChartView(frame: rect)
        let entries = [
            RadarChartDataEntry(value: 40),
            RadarChartDataEntry(value: 30),
            RadarChartDataEntry(value: 20),
            RadarChartDataEntry(value: 40),
        ]
        let set = RadarChartDataSet(entries: entries, label: "Data")
        chartView.data = RadarChartData(dataSet: set)
        view.addSubview(chartView)
    }
}
