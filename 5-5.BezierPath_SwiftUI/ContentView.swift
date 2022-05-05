//
//  ContentView.swift
//  5-5.BezierPath_SwiftUI
//
//  Created by eric6742 on 2022/5/1.
//
import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        
        let view = UIView()
        view.backgroundColor = UIColor.init(cgColor: CGColor.init(srgbRed: 1, green: 229/255, blue: 290/255, alpha: 1))
                                        
        let containerView = UIView()
        let handView = UIView()
        let bodyView = UIView()
        let tailView = UIView()
        let tail2View = UIView()
        
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 335, height: 378))
//        imageView.image = UIImage(named: "浣熊")
//        imageView.alpha = 0.1
//        view.addSubview(imageView)
 
 
        containerView.layer.addSublayer(addLeftEars())
        containerView.layer.addSublayer(addLeftBackEars())
        containerView.layer.addSublayer(addRightEars())
        containerView.layer.addSublayer(addhead1())
        containerView.layer.addSublayer(addhead2())
        containerView.layer.addSublayer(addhead3())
        containerView.layer.addSublayer(addhead4())
        containerView.layer.addSublayer(addhead5())
        containerView.layer.addSublayer(addhead6())
        containerView.layer.addSublayer(addhead7())
        containerView.layer.addSublayer(addFace1())
        containerView.layer.addSublayer(addFace2())
        containerView.layer.addSublayer(addFace3())
        containerView.layer.addSublayer(addFace4())
        containerView.layer.addSublayer(addFace5())
        containerView.layer.addSublayer(addFace6())
        containerView.layer.addSublayer(addFace7())
        containerView.layer.addSublayer(addFace8())
        containerView.layer.addSublayer(addFace9())
        containerView.layer.addSublayer(addFace10())
        containerView.layer.addSublayer(addFace11())
        containerView.layer.addSublayer(addFace12())
        containerView.layer.addSublayer(addFace13())
        containerView.layer.addSublayer(addFace14())
        containerView.layer.addSublayer(addFace15())
        containerView.layer.addSublayer(addFace16())
        containerView.layer.addSublayer(addFace17())
        containerView.layer.addSublayer(addFace18())
        containerView.layer.addSublayer(addFace19())
        containerView.layer.addSublayer(addFace20())
        containerView.layer.addSublayer(addFace21())
        containerView.layer.addSublayer(addFace22())
        containerView.layer.addSublayer(addFace23())
        containerView.layer.addSublayer(addFace24())
        containerView.layer.addSublayer(addFace25())
        handView.layer.addSublayer(addLeftHand1())
        handView.layer.addSublayer(addLeftHand2())
        handView.layer.addSublayer(addLeftHand3())
        handView.layer.addSublayer(addLeftHand4())
        handView.layer.addSublayer(addRightHand1())
        handView.layer.addSublayer(addRightHand2())
        handView.layer.addSublayer(addRightHand3())
        handView.layer.addSublayer(addRightHand4())
        handView.layer.addSublayer(addRightHand5())
        handView.layer.addSublayer(addRightHand6())
        handView.layer.addSublayer(addRightHand7())
        bodyView.layer.addSublayer(addBelly1())
        bodyView.layer.addSublayer(addBelly2())
        bodyView.layer.addSublayer(addBelly3())
        bodyView.layer.addSublayer(addBelly4())
        bodyView.layer.addSublayer(addLeftFoot1())
        bodyView.layer.addSublayer(addLeftFoot2())
        bodyView.layer.addSublayer(addLeftFoot3())
        bodyView.layer.addSublayer(addLeftFoot4())
        bodyView.layer.addSublayer(addRightFoot1())
        bodyView.layer.addSublayer(addRightFoot2())
        bodyView.layer.addSublayer(addRightFoot3())
        bodyView.layer.addSublayer(addRightFoot4())
        bodyView.layer.addSublayer(addRightbody1())
        bodyView.layer.addSublayer(addRightbody2())
        bodyView.layer.addSublayer(addRightbody3())
        bodyView.layer.addSublayer(addRightbody4())
        bodyView.layer.addSublayer(addRightbody5())
        bodyView.layer.addSublayer(addRightbody6())
        tailView.layer.addSublayer(addTail1())
        tailView.layer.addSublayer(addTail2())
        tailView.layer.addSublayer(addTail3())
        tailView.layer.addSublayer(addTail4())
        tailView.layer.addSublayer(addTail5())
        tail2View.layer.addSublayer(addTailTop1())
        tail2View.layer.addSublayer(addTailTop2())
        tail2View.layer.addSublayer(addTailTop3())
        tail2View.layer.addSublayer(addTailTop4())
        tail2View.layer.addSublayer(addTailTop5())
        tail2View.layer.addSublayer(addTailTop6())
        tail2View.layer.addSublayer(addTailTop7())
        tail2View.layer.addSublayer(addTailTop8())
        tail2View.layer.addSublayer(addTailTop9())
        

//        containerView.layer.addSublayer(addWhiteDot())
        
//把新增的view加到原本的view中，畫面才會正常顯示

        view.addSubview(containerView)
        view.addSubview(bodyView)
        view.addSubview(handView)
        view.addSubview(tailView)
        view.addSubview(tail2View)

        return view
    }
                                            
    ///建立左耳朵圖層
    func addLeftEars() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 39, y: 54)) //左下點
        path.addLine(to: CGPoint(x: 39, y: 22)) //左上點
        path.addLine(to: CGPoint(x: 46, y: 11)) //右上點
        path.addLine(to: CGPoint(x: 62, y: 30)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 47/255, green: 51/255, blue: 66/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左背耳朵圖層
    func addLeftBackEars() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 62, y: 30)) //左下點
        path.addLine(to: CGPoint(x: 46, y: 11)) //左上點
        path.addLine(to: CGPoint(x: 49, y: 12)) //右上點
        path.addLine(to: CGPoint(x: 70, y: 31)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 207/255, green: 208/255, blue: 213/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立右耳朵圖層
    func addRightEars() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 122, y: 38)) //左下點
        path.addLine(to: CGPoint(x: 153, y: 23)) //左上點
        path.addLine(to: CGPoint(x: 170, y: 38)) //右上點
        path.addLine(to: CGPoint(x: 168, y: 84)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 47/255, green: 51/255, blue: 66/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    
    ///建立左頭蓋-1圖層
    func addhead1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 40, y: 53)) //左下點
        path.addLine(to: CGPoint(x: 62, y: 30)) //左上點
        path.addLine(to: CGPoint(x: 70, y: 31)) //右上點
        path.addLine(to: CGPoint(x: 54, y: 47)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 212/255, green: 190/255, blue: 167/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左頭蓋-2圖層
    func addhead2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 54, y: 47)) //左下點
        path.addLine(to: CGPoint(x: 62, y: 30)) //左上點
        path.addLine(to: CGPoint(x: 93, y: 30)) //右上點
        path.addLine(to: CGPoint(x: 80, y: 52)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 212/255, green: 190/255, blue: 167/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左頭蓋-3圖層
    func addhead3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 80, y: 52)) //左下點
        path.addLine(to: CGPoint(x: 93, y: 30)) //左上點
        path.addLine(to: CGPoint(x: 122, y: 38)) //右上點
        path.addLine(to: CGPoint(x: 99, y: 60)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 212/255, green: 190/255, blue: 167/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左頭蓋-4圖層
    func addhead4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 99, y: 60)) //左下點
        path.addLine(to: CGPoint(x: 122, y: 38)) //左上點
        path.addLine(to: CGPoint(x: 168, y: 84)) //右上點
        path.addLine(to: CGPoint(x: 120, y: 87)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 212/255, green: 190/255, blue: 167/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左頭蓋-5圖層
    func addhead5() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 120, y: 87)) //左點
        path.addLine(to: CGPoint(x: 168, y: 84)) //右上點
        path.addLine(to: CGPoint(x: 190, y: 130)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 196/255, green: 171/255, blue: 141/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左頭蓋-6圖層
    func addhead6() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 168, y: 84)) //左點
        path.addLine(to: CGPoint(x: 186, y: 93)) //右上點
        path.addLine(to: CGPoint(x: 190, y: 130)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 196/255, green: 171/255, blue: 141/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立左頭蓋-7圖層
    func addhead7() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 168, y: 84)) //左點
        path.addLine(to: CGPoint(x: 186, y: 93)) //右上點
        path.addLine(to: CGPoint(x: 169, y: 69)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 196/255, green: 171/255, blue: 141/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-1圖層
    func addFace1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 39, y: 54)) //右上點
        path.addLine(to: CGPoint(x: 23, y: 74)) //左下點
        path.addLine(to: CGPoint(x: 28, y: 84)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-2圖層
    func addFace2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 23, y: 74)) //右上點
        path.addLine(to: CGPoint(x: 14, y: 123)) //左下點
        path.addLine(to: CGPoint(x: 28, y: 84)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-3圖層 (左眼)
    func addFace3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 14, y: 123)) //左下點
        path.addLine(to: CGPoint(x: 28, y: 84)) //右上點
        path.addLine(to: CGPoint(x: 26, y: 129)) //右下點
        path.addLine(to: CGPoint(x: 22, y: 137)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 68/255, green: 77/255, blue: 82/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-4圖層
    func addFace4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 28, y: 84)) //左上點
        path.addLine(to: CGPoint(x: 41, y: 84)) //右上點
        path.addLine(to: CGPoint(x: 26, y: 129)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-5圖層
    func addFace5() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 28, y: 84)) //左下點
        path.addLine(to: CGPoint(x: 41, y: 84)) //右下點
        path.addLine(to: CGPoint(x: 54, y: 47)) //右上點
        path.addLine(to: CGPoint(x: 39, y: 54)) //左上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-6圖層(黑鼻子-1)
    func addFace6() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 41, y: 84)) //左下點
        path.addLine(to: CGPoint(x: 54, y: 47)) //左上點
        path.addLine(to: CGPoint(x: 80, y: 52)) //右上點
        path.addLine(to: CGPoint(x: 64, y: 84)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 57/255, green: 75/255, blue: 87/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-7圖層(黑鼻子-2)
    func addFace7() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 26, y: 129)) //左下點
        path.addLine(to: CGPoint(x: 41, y: 84)) //左上點
        path.addLine(to: CGPoint(x: 64, y: 84)) //右上點
        path.addLine(to: CGPoint(x: 46, y: 131)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 57/255, green: 75/255, blue: 87/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-8圖層(黑鼻子-3)
    func addFace8() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 10, y: 160)) //左下點
        path.addLine(to: CGPoint(x: 26, y: 129)) //左上點
        path.addLine(to: CGPoint(x: 46, y: 131)) //右上點
        path.addLine(to: CGPoint(x: 26, y: 163)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 57/255, green: 75/255, blue: 87/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-9圖層(黑鼻子-4)
    func addFace9() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 18, y: 172)) //左下點
        path.addLine(to: CGPoint(x: 10, y: 160)) //左上點
        path.addLine(to: CGPoint(x: 26, y: 163)) //右上點
        path.addLine(to: CGPoint(x: 29, y: 174)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 31/255, green: 38/255, blue: 44/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-10圖層
    func addFace10() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 64, y: 84)) //左下點
        path.addLine(to: CGPoint(x: 80, y: 52)) //左上點
        path.addLine(to: CGPoint(x: 99, y: 60)) //右上點
        path.addLine(to: CGPoint(x: 77, y: 93)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-11圖層
    func addFace11() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 46, y: 131)) //左下點
        path.addLine(to: CGPoint(x: 64, y: 84)) //左上點
        path.addLine(to: CGPoint(x: 77, y: 93)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-12圖層
    func addFace12() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 77, y: 93)) //左下點
        path.addLine(to: CGPoint(x: 99, y: 60)) //左上點
        path.addLine(to: CGPoint(x: 120, y: 87)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-13圖層
    func addFace13() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 77, y: 93)) //左下點
        path.addLine(to: CGPoint(x: 120, y: 87)) //左上點
        path.addLine(to: CGPoint(x: 133, y: 145)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-14圖層
    func addFace14() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 133, y: 145)) //左下點
        path.addLine(to: CGPoint(x: 120, y: 87)) //左上點
        path.addLine(to: CGPoint(x: 190, y: 130)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-15圖層
    func addFace15() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 133, y: 145)) //左下點
        path.addLine(to: CGPoint(x: 190, y: 130)) //左上點
        path.addLine(to: CGPoint(x: 190, y: 160)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 200/255, green: 204/255, blue: 203/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-16圖層(右眼)
    func addFace16() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 46, y: 131)) //左下點
        path.addLine(to: CGPoint(x: 77, y: 93)) //左上點
        path.addLine(to: CGPoint(x: 133, y: 145)) //右上點
        path.addLine(to: CGPoint(x: 74, y: 150)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 26/255, green: 44/255, blue: 56/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-17圖層
    func addFace17() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 26, y: 163)) //左下點
        path.addLine(to: CGPoint(x: 46, y: 131)) //左上點
        path.addLine(to: CGPoint(x: 74, y: 150)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 224/255, green: 231/255, blue: 239/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-18圖層
    func addFace18() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 29, y: 174)) //左下點
        path.addLine(to: CGPoint(x: 26, y: 163)) //左上點
        path.addLine(to: CGPoint(x: 74, y: 150)) //右上點
        path.addLine(to: CGPoint(x: 80, y: 185)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 186/255, green: 191/255, blue: 187/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-19圖層
    func addFace19() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 80, y: 185)) //左下點
        path.addLine(to: CGPoint(x: 74, y: 150)) //左上點
        path.addLine(to: CGPoint(x: 116, y: 168)) //右上點
        path.addLine(to: CGPoint(x: 80, y: 185)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 186/255, green: 191/255, blue: 187/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-20圖層(右眼2)
    func addFace20() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 74, y: 150)) //左下點
        path.addLine(to: CGPoint(x: 133, y: 145)) //左上點
        path.addLine(to: CGPoint(x: 116, y: 168)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 17/255, green: 22/255, blue: 26/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-21圖層(右眼3)
    func addFace21() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 133, y: 145)) //左下點
        path.addLine(to: CGPoint(x: 190, y: 160)) //左上點
        path.addLine(to: CGPoint(x: 160, y: 180)) //右上點
        path.addLine(to: CGPoint(x: 116, y: 168)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 17/255, green: 22/255, blue: 26/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-22圖層
    func addFace22() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 80, y: 185)) //左下點
        path.addLine(to: CGPoint(x: 116, y: 168)) //左上點
        path.addLine(to: CGPoint(x: 160, y: 180)) //右上點
        path.addLine(to: CGPoint(x: 124, y: 194)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 181/255, green: 184/255, blue: 177/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-23圖層(下巴1)
    func addFace23() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 40, y: 177)) //左上點
        path.addLine(to: CGPoint(x: 80, y: 185)) //右上點
        path.addLine(to: CGPoint(x: 79, y: 194)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 189/255, green: 193/255, blue: 196/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-24圖層(下巴2)
    func addFace24() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 79, y: 194)) //左上點
        path.addLine(to: CGPoint(x: 80, y: 185)) //右上點
        path.addLine(to: CGPoint(x: 124, y: 194)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 186/255, green: 190/255, blue: 191/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立臉-25圖層
    func addFace25() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 160, y: 180)) //左上點
        path.addLine(to: CGPoint(x: 190, y: 160)) //右上點
        path.addLine(to: CGPoint(x: 180, y: 173)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 130/255, green: 96/255, blue: 61/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(左手)
    func addLeftHand1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 53, y: 184)) //右上點
        path.addLine(to: CGPoint(x: 39, y: 208)) //左中點
        path.addLine(to: CGPoint(x: 36, y: 255)) //左下點
        path.addLine(to: CGPoint(x: 52, y: 260)) //右下點
        path.addLine(to: CGPoint(x: 56, y: 184)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 208/255, green: 191/255, blue: 174/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(左手)
    func addLeftHand2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 52, y: 260)) //右上點
        path.addLine(to: CGPoint(x: 56, y: 184)) //左上點
        path.addLine(to: CGPoint(x: 67, y: 259)) //左下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 180/255, green: 156/255, blue: 128/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(左手黑)
    func addLeftHand3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 36, y: 255)) //左上點
        path.addLine(to: CGPoint(x: 46, y: 277)) //左下點
        path.addLine(to: CGPoint(x: 54, y: 281)) //右下點
        path.addLine(to: CGPoint(x: 52, y: 260)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 38/255, green: 45/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(左手黑)
    func addLeftHand4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 52, y: 260)) //左上點
        path.addLine(to: CGPoint(x: 54, y: 281)) //左下點
        path.addLine(to: CGPoint(x: 65, y: 279)) //右下點
        path.addLine(to: CGPoint(x: 67, y: 259)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 38/255, green: 45/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右手)
    func addRightHand1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 124, y: 194)) //右上點
        path.addLine(to: CGPoint(x: 89, y: 271)) //左下點
        path.addLine(to: CGPoint(x: 121, y: 278)) //右下點
        path.addLine(to: CGPoint(x: 139, y: 235)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 204/255, green: 186/255, blue: 166/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右手)
    func addRightHand2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 124, y: 194)) //左中點
        path.addLine(to: CGPoint(x: 139, y: 235)) //右下點
        path.addLine(to: CGPoint(x: 181, y: 172)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 204/255, green: 186/255, blue: 166/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右手)
    func addRightHand3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 139, y: 235)) //左中點
        path.addLine(to: CGPoint(x: 121, y: 278)) //右下點
        path.addLine(to: CGPoint(x: 157, y: 260)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 154/255, green: 121/255, blue: 88/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右手)
    func addRightHand4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 121, y: 278)) //左中點
        path.addLine(to: CGPoint(x: 157, y: 260)) //右下點
        path.addLine(to: CGPoint(x: 137, y: 277)) //右下點
        path.close() //收尾
    
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 134/255, green: 104/255, blue: 74/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右手)
    func addRightHand5() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 139, y: 235)) //左中點
        path.addLine(to: CGPoint(x: 157, y: 260)) //右下點
        path.addLine(to: CGPoint(x: 192, y: 201)) //右上點
        path.addLine(to: CGPoint(x: 180, y: 173)) //左上點
        path.close() //收尾
    
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 134/255, green: 104/255, blue: 74/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右黑手)
    func addRightHand6() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 89, y: 271)) //右上點
        path.addLine(to: CGPoint(x: 89, y: 290)) //左下點
        path.addLine(to: CGPoint(x: 106, y: 294)) //右下點
        path.addLine(to: CGPoint(x: 121, y: 278)) //右上點
        path.close() //收尾
    
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 25/255, green: 35/255, blue: 44/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立手圖層(右黑手)
    func addRightHand7() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 121, y: 278)) //右上點
        path.addLine(to: CGPoint(x: 106, y: 294)) //左下點
        path.addLine(to: CGPoint(x: 120, y: 294)) //右下點
        path.addLine(to: CGPoint(x: 137, y: 277)) //右上點
        path.close() //收尾
    
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 25/255, green: 35/255, blue: 44/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(肚皮左)
    func addBelly1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 56, y: 184)) //右上點
        path.addLine(to: CGPoint(x: 67, y: 259)) //左下點
        path.addLine(to: CGPoint(x: 77, y: 265)) //右下點
        path.addLine(to: CGPoint(x: 79, y: 194)) //右上點
        path.close() //收尾
    
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 222/255, green: 231/255, blue: 238/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(肚皮右)
    func addBelly2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 79, y: 194)) //右上點
        path.addLine(to: CGPoint(x: 77, y: 265)) //左下點
        path.addLine(to: CGPoint(x: 89, y: 271)) //右下點
        path.addLine(to: CGPoint(x: 124, y: 194)) //右上點
        path.close() //收尾
    
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 222/255, green: 231/255, blue: 238/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(肚皮左下)
    func addBelly3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 77, y: 265)) //右上點
        path.addLine(to: CGPoint(x: 67, y: 259)) //左下點
        path.addLine(to: CGPoint(x: 63, y: 279)) //右下點
        path.addLine(to: CGPoint(x: 78, y: 311)) //右上點
        path.addLine(to: CGPoint(x: 97, y: 321)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 222/255, green: 231/255, blue: 238/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }

    ///建立身體圖層(肚皮右下)
    func addBelly4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 77, y: 265)) //右上點
        path.addLine(to: CGPoint(x: 97, y: 321)) //左下點
        path.addLine(to: CGPoint(x: 119, y: 325)) //右下點
        path.addLine(to: CGPoint(x: 131, y: 309)) //右上點
        path.addLine(to: CGPoint(x: 135, y: 279)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 222/255, green: 231/255, blue: 238/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(左腳)
    func addLeftFoot1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 49, y: 277)) //右上點
        path.addLine(to: CGPoint(x: 40, y: 300)) //左下點
        path.addLine(to: CGPoint(x: 55, y: 304)) //右下點
        path.addLine(to: CGPoint(x: 68, y: 289)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 37/255, green: 46/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(左腳)
    func addLeftFoot2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 68, y: 289)) //右上點
        path.addLine(to: CGPoint(x: 63, y: 279)) //左下點
        path.addLine(to: CGPoint(x: 55, y: 281)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 180/255, green: 156/255, blue: 128/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(左腳)
    func addLeftFoot3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 40, y: 300)) //右上點
        path.addLine(to: CGPoint(x: 41, y: 312)) //左下點
        path.addLine(to: CGPoint(x: 59, y: 318)) //右下點
        path.addLine(to: CGPoint(x: 55, y: 304)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 37/255, green: 46/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(左腳)
    func addLeftFoot4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 55, y: 304)) //右上點
        path.addLine(to: CGPoint(x: 59, y: 318)) //左下點
        path.addLine(to: CGPoint(x: 78, y: 310)) //右下點
        path.addLine(to: CGPoint(x: 68, y: 289)) //右上點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 37/255, green: 46/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右腳)
    func addRightFoot1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 135, y: 277)) //右上點
        path.addLine(to: CGPoint(x: 131, y: 309)) //左下點
        path.addLine(to: CGPoint(x: 164, y: 309)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 149/255, green: 118/255, blue: 89/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右腳黑)
    func addRightFoot2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 131, y: 309)) //右上點
        path.addLine(to: CGPoint(x: 119, y: 323)) //左下點
        path.addLine(to: CGPoint(x: 137, y: 328)) //右下點
        path.addLine(to: CGPoint(x: 164, y: 309)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 29/255, green: 42/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右腳黑)
    func addRightFoot3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 119, y: 323)) //右上點
        path.addLine(to: CGPoint(x: 116, y: 338)) //左下點
        path.addLine(to: CGPoint(x: 135, y: 341)) //右下點
        path.addLine(to: CGPoint(x: 137, y: 328)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 29/255, green: 42/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右腳黑)
    func addRightFoot4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 137, y: 328)) //右上點
        path.addLine(to: CGPoint(x: 149, y: 320)) //左下點
        path.addLine(to: CGPoint(x: 150, y: 335)) //左下點
        path.addLine(to: CGPoint(x: 136, y: 335)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 29/255, green: 42/255, blue: 51/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右身)
    func addRightbody1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 135, y: 277)) //右上點
        path.addLine(to: CGPoint(x: 164, y: 309)) //左下點
        path.addLine(to: CGPoint(x: 157, y: 260)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 177/255, green: 147/255, blue: 119/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右身)
    func addRightbody2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 157, y: 260)) //左上點
        path.addLine(to: CGPoint(x: 210, y: 244)) //右上點
        path.addLine(to: CGPoint(x: 217, y: 303)) //右下點
        path.addLine(to: CGPoint(x: 163, y: 308)) //左下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 177/255, green: 147/255, blue: 119/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右身)
    func addRightbody3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 157, y: 260)) //左上點
        path.addLine(to: CGPoint(x: 210, y: 244)) //右上點
        path.addLine(to: CGPoint(x: 192, y: 201)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 177/255, green: 147/255, blue: 119/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右身)
    func addRightbody4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 190, y: 160)) //左上點
        path.addLine(to: CGPoint(x: 180, y: 173)) //右上點
        path.addLine(to: CGPoint(x: 192, y: 200)) //右下點
        path.addLine(to: CGPoint(x: 203, y: 171)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 177/255, green: 147/255, blue: 119/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右身)
    func addRightbody5() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 203, y: 171)) //左上點
        path.addLine(to: CGPoint(x: 192, y: 200)) //右上點
        path.addLine(to: CGPoint(x: 210, y: 244)) //右下點
        path.addLine(to: CGPoint(x: 228, y: 217)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 177/255, green: 147/255, blue: 119/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立身體圖層(右身)
    func addRightbody6() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 228, y: 217)) //左上點
        path.addLine(to: CGPoint(x: 210, y: 244)) //右上點
        path.addLine(to: CGPoint(x: 217, y: 303)) //右下點
        path.addLine(to: CGPoint(x: 232, y: 242)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 177/255, green: 147/255, blue: 119/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTail1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 229, y: 223)) //左上點
        path.addLine(to: CGPoint(x: 242, y: 219)) //右上點
        path.addLine(to: CGPoint(x: 230, y: 230)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 207/255, green: 211/255, blue: 212/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTail2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 230, y: 230)) //左上點
        path.addLine(to: CGPoint(x: 242, y: 219)) //右上點
        path.addLine(to: CGPoint(x: 275, y: 211)) //右下點
        path.addLine(to: CGPoint(x: 232, y: 242)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 57/255, green: 57/255, blue: 55/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTail3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 232, y: 242)) //左上點
        path.addLine(to: CGPoint(x: 275, y: 211)) //右上點
        path.addLine(to: CGPoint(x: 285, y: 220)) //右下點
        path.addLine(to: CGPoint(x: 225, y: 271)) //右下點
        
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 207/255, green: 211/255, blue: 212/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTail4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 225, y: 271)) //左上點
        path.addLine(to: CGPoint(x: 285, y: 220)) //右上點
        path.addLine(to: CGPoint(x: 283, y: 230)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 57/255, green: 57/255, blue: 55/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    func addTail5() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 283, y: 230)) //左上點
        path.addLine(to: CGPoint(x: 285, y: 220)) //右上點
        path.addLine(to: CGPoint(x: 318, y: 280)) //右下點
        path.addLine(to: CGPoint(x: 322, y: 297)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 57/255, green: 57/255, blue: 55/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop1() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 256, y: 249)) //左上點
        path.addLine(to: CGPoint(x: 283, y: 230)) //右上點
        path.addLine(to: CGPoint(x: 323, y: 298)) //右下點
        path.addLine(to: CGPoint(x: 288, y: 323)) //右下點
        
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 207/255, green: 211/255, blue: 212/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop2() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 288, y: 323)) //左上點
        path.addLine(to: CGPoint(x: 323, y: 298)) //右上點
        path.addLine(to: CGPoint(x: 305, y: 334)) //右下點
        path.addLine(to: CGPoint(x: 278, y: 349)) //右下點
        
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 207/255, green: 211/255, blue: 212/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop3() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 256, y: 249)) //左上點
        path.addLine(to: CGPoint(x: 288, y: 323)) //右上點
        path.addLine(to: CGPoint(x: 245, y: 340)) //右下點
        
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 42/255, green: 43/255, blue: 47/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop4() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 245, y: 340)) //左上點
        path.addLine(to: CGPoint(x: 288, y: 323)) //右上點
        path.addLine(to: CGPoint(x: 278, y: 349)) //右下點
        path.addLine(to: CGPoint(x: 234, y: 367)) //右下點
        
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 15/255, green: 16/255, blue: 10/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop5() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 256, y: 249)) //左上點
        path.addLine(to: CGPoint(x: 245, y: 340)) //右上點
        path.addLine(to: CGPoint(x: 212, y: 274)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 64/255, green: 74/255, blue: 76/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop6() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 212, y: 274)) //左上點
        path.addLine(to: CGPoint(x: 245, y: 340)) //右上點
        path.addLine(to: CGPoint(x: 181, y: 346)) //右下點
        path.addLine(to: CGPoint(x: 172, y: 298)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 207/255, green: 211/255, blue: 212/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop7() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 181, y: 346)) //左上點
        path.addLine(to: CGPoint(x: 245, y: 340)) //右上點
        path.addLine(to: CGPoint(x: 234, y: 367)) //右下點
        path.addLine(to: CGPoint(x: 191, y: 369)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 169/255, green: 175/255, blue: 165/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop8() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 172, y: 298)) //左上點
        path.addLine(to: CGPoint(x: 181, y: 346)) //右上點
        path.addLine(to: CGPoint(x: 129, y: 339)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 64/255, green: 74/255, blue: 76/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    ///建立尾巴圖層
    func addTailTop9() -> CAShapeLayer{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 129, y: 339)) //左上點
        path.addLine(to: CGPoint(x: 181, y: 346)) //右上點
        path.addLine(to: CGPoint(x: 192, y: 369)) //右下點
        path.addLine(to: CGPoint(x: 153, y: 364)) //右下點
        path.close() //收尾
        
        let planetLayer = CAShapeLayer()
        planetLayer.path = path.cgPath
        planetLayer.fillColor = CGColor(srgbRed: 15/255, green: 16/255, blue: 10/255, alpha: 1)
        planetLayer.strokeColor = UIColor.black.cgColor
        planetLayer.lineWidth = 0.3

        return planetLayer
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
