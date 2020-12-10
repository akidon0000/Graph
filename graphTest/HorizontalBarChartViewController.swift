//
//  HorizontalBarChartViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class HorizontalBarChartViewController: UIViewController {

    @IBAction func buckButton(_ sender: Any) {
        let vc = R.storyboard.main.mainvc()!
        self.present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    func setData(){
        let yAxisValues:[Double] = [5.0, 0.0, 18.0, 0.0, 15.0, 54.0, 7.0, 48.0, 54.0, 70.0, 33.0, 12.0]
        let graphWidth = self.view.frame.width
        let graphHeight = self.view.frame.height - 65
        
        let rect = CGRect(x:0, y: 65, width: graphWidth, height: graphHeight)
        let chartView = HorizontalBarChartView(frame: rect)
        let entries = yAxisValues.enumerated().map{ BarChartDataEntry(x: Double($0.offset), y: $0.element) }
        let set = BarChartDataSet(entries: entries, label: "Data")
        chartView.data = BarChartData(dataSet: set)
        view.addSubview(chartView)
    }

}
