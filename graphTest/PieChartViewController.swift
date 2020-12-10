//
//  PieChartViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class PieChartViewController: UIViewController {

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
        
        let chartView = PieChartView(frame: rect)
        let entries = [
            PieChartDataEntry(value: 10, label: "A"),
            PieChartDataEntry(value: 20, label: "B"),
            PieChartDataEntry(value: 30, label: "C"),
            PieChartDataEntry(value: 40, label: "D"),
            PieChartDataEntry(value: 50, label: "E")
        ]
        let set = PieChartDataSet(entries: entries, label: "Data")
        chartView.data = PieChartData(dataSet: set)
        view.addSubview(chartView)
    }
}
