# Vision Scan QR Codes 
This is my implementation of the [Live Scanning QR Codes](https://anuragajwani.medium.com/live-scanning-qr-codes-in-ios-using-vision-framework-3509450cda7e) tutorial by Anurag Ajwani (thanks Anurag!). 
This project uses Swift, UIKit, AVFoundation, and Vision.

## What I learned 

How to:

Call VNSequenceRequestHandler() to perform VNDetectBarcodesRequest() on a sequence of images, including from live camera video input 

Get a detected barcode payloadStringValue from VNBarcodeObservation

