//
//  CandleStickChartViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class CandleStickChartViewController: UIViewController {
    
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
        let chartView = CandleStickChartView(frame: rect)
        let entries = [
            CandleChartDataEntry(x: 1, shadowH: 12, shadowL: 10, open: 11, close: 11),
            CandleChartDataEntry(x: 2, shadowH: 20, shadowL: 15, open: 18, close: 17),
            CandleChartDataEntry(x: 3, shadowH: 30, shadowL: 24, open: 26, close: 28),
        ]
        let set = CandleChartDataSet(entries: entries, label: "Test")
        chartView.data = CandleChartData(dataSet: set)
        view.addSubview(chartView)
    }
}
