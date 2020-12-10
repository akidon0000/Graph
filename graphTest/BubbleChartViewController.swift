//
//  BubbleChartViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class BubbleChartViewController: UIViewController {
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
        let chartView = BubbleChartView(frame: rect)
        let entries = [
            BubbleChartDataEntry(x: 1, y: 10, size: 30),
            BubbleChartDataEntry(x: 2, y: 60, size: 10),
            BubbleChartDataEntry(x: 3, y: 20, size: 20),
            BubbleChartDataEntry(x: 4, y: 40, size: 30),
            BubbleChartDataEntry(x: 5, y: 30, size: 40),
            BubbleChartDataEntry(x: 6, y: 10, size: 20)
        ]
        let set = BubbleChartDataSet(entries)
        chartView.data = BubbleChartData(dataSet: set)
        view.addSubview(chartView)
    }
    
}
