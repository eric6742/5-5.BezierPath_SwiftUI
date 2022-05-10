import UIKit
let aDegree = CGFloat.pi / 180
let lineWidth: CGFloat = 30 //指定圈圈的寬度
let radius: CGFloat = 50 // 圈的大小
let startDegree: CGFloat = 270 //開始起點的度數

let circlePath = UIBezierPath(ovalIn: CGRect(x: lineWidth, y: lineWidth, width: radius * 2, height: radius * 2)) //radius : 配合 width & high 呈現大小的比例（數字越大，園越大）

let circleLayer = CAShapeLayer()
circleLayer.path = circlePath.cgPath
circleLayer.strokeColor = UIColor.gray.cgColor
circleLayer.lineWidth = lineWidth
circleLayer.fillColor = UIColor.clear.cgColor

let percentage:CGFloat = 70
let percentagePath = UIBezierPath(arcCenter: CGPoint(x: lineWidth + radius, y: lineWidth + radius), radius: radius, startAngle: aDegree * startDegree, endAngle: aDegree * (startDegree + 360 * percentage / 100), clockwise: true)
let percentageLayer = CAShapeLayer()

percentageLayer.path = percentagePath.cgPath
percentageLayer.strokeColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1).cgColor
percentageLayer.lineWidth = lineWidth
percentageLayer.fillColor = UIColor.clear.cgColor

let label = UILabel(frame: CGRect(x: 0, y: 0, width: 2 * (lineWidth + radius), height: 2 * (lineWidth + radius)))
label.textAlignment = .center
label.textColor = .white
label.text = "\(percentage)%"
let view = UIView(frame: label.frame)
view.layer.addSublayer(circleLayer)
view.layer.addSublayer(percentageLayer)
view.addSubview(label)
view
