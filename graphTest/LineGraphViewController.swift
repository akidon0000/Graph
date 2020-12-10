//
//  LineGraphViewController.swift
//  graphTest
//
//  Created by Akihiro Matsuyama on 2020/12/10.
//  Copyright © 2020 Akihiro Matsuyama. All rights reserved.
//

import UIKit
import Charts

class LineGraphViewController: UIViewController, ChartViewDelegate {
    var chart: CombinedChartView!
    var lineDataSet: LineChartDataSet!
    
    @IBAction func buckButton(_ sender: Any) {
        let vc = R.storyboard.main.mainvc()!
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    func setData() {
        //let yAxisValues = (1...12).map{ Double($0 * arc4random_uniform(10)) } //ランダム
        let yAxisValues:[Double] = [5.0, 0.0, 18.0, 0.0, 15.0, 54.0, 7.0, 48.0, 54.0, 70.0, 33.0, 12.0]
        let graphWidth = self.view.frame.width
        let graphHeight = self.view.frame.height - 65
        
        
        let rect = CGRect(x:0, y: 65, width: graphWidth, height: graphHeight)
        let chartView = LineChartView(frame: rect)
        var dataSets = [LineChartDataSet]()
        
        
        let entries = yAxisValues.enumerated().map{ ChartDataEntry(x: Double($0.offset), y: $0.element) }
        let dataSet = LineChartDataSet(entries: entries, label: "label")
        dataSet.drawValuesEnabled = false
        dataSet.drawCirclesEnabled = false
        dataSet.colors = [NSUIColor.red]
        
        
        dataSets.append(dataSet)
        chartView.data = LineChartData(dataSets: dataSets as [IChartDataSet])
        
        let formatter = ChartFormatter()
        chartView.xAxis.valueFormatter = formatter
        //labelCountはChartDataEntryと同じ数だけ入れます。
        chartView.xAxis.labelCount = 12
        //granularityは1.0で固定
        chartView.xAxis.granularity = 1.0
        
        //            chartView.data?.dataSets
        self.view.addSubview(chartView)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    class ChartFormatter: NSObject, IAxisValueFormatter {
        let xAxisValues = ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
        
        func stringForValue(_ value: Double, axis: AxisBase?) -> String {
            //granularityを１.０、labelCountを１２にしているおかげで引数のvalueは1.0, 2.0, 3.0・・・１１.０となります。
            let index = Int(value)
            return xAxisValues[index]
        }
    }
}
