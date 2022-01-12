//
//  ViewController.swift
//  VisionScanQRCodes
//
//  Created by Caroline LaDouce on 1/12/22.
//

import UIKit
import AVFoundation
import Vision

class MainViewController: UIViewController {
    
    private let captureSession = AVCaptureSession()
    
    private func addCamerInput() {
        let device = AVCaptureDevice.default(for: .video)!
        let cameraInput = try! AVCaptureDeviceInput(device: device)
        self.captureSession.addInput(cameraInput)
    }
    
    private lazy var previewLayer: AVCaptureVideoPreviewLayer = {
        let preview = AVCaptureVideoPreviewLayer(session: self.captureSession)
        preview.videoGravity = .resizeAspect
        return preview
    }()
    
    private func addPreviewLayer() {
        self.view.layer.addSublayer(self.previewLayer)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        self.addCamerInput()
        self.addPreviewLayer()
        self.captureSession.startRunning()
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.previewLayer.frame = self.view.bounds
    }
    
}

