//
//  ViewController.swift
//  UIKIT COMPONENT BUTTON BY DRAG AND DROP
//
//  Created by Syed.Reshma Ruksana on 9/7/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var URLReqObj:URLRequest!
    var dataTaskObj:URLSessionDataTask!
    
    var actorsNames:UILabel!
    var actorsNamesTextField:UITextField!
    var actorButton:UIButton!
  
    var quotes:UILabel!
    var quotesTextField:UITextField!
    var quotesButton:UIButton!
    
    var states:UILabel!
    var statesTextField:UITextField!
    var statesButton:UIButton!
    
    var cities:UILabel!
    var citiesTextField:UITextField!
    var citiesButton:UIButton!
    
    var loginButton:UIButton!
    
    var firstNameLbl:UILabel!
    var firstNameTextField:UITextField!
    
    var batchIDLbl:UILabel!
    var batchIDTextField:UITextField!

    var studentIDLbl:UILabel!
    var studentIDTextField:UITextField!

    var getStudentDetailsLbl:UILabel!
    var getStudentDetailsTextField:UITextField!

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  /***     actorButtonTap()
       quoteButtonTap()
       statesButtonTap()
       citiesButtonTap()
       loginButtonTap()
        ***/
        
        
    //ACTORS
        
        actorsNames=UILabel()
        actorsNames.frame=CGRect(x:250, y: 50 , width: 150, height: 40)
        actorsNames.text="ACTOR NAME"
        view.addSubview(actorsNames)
        
        actorsNamesTextField=UITextField()
        actorsNamesTextField.frame=CGRect(x: 250, y: 50, width: 150, height: 40)
        view.addSubview(actorsNamesTextField)
        
        
        self.view.backgroundColor=UIColor.green
        actorButton=UIButton(type: UIButtonType.system)
        actorButton.frame=CGRect(x: 20, y:50 , width: 150, height:40)
        actorButton.backgroundColor=UIColor.yellow
        actorButton.setTitle("ACTOR NAME", for: UIControlState.normal)
        actorButton.addTarget(self, action: #selector(actorButtonTap), for: UIControlEvents.touchUpInside)
        view.addSubview(actorButton)
        
        
    //QUOTE
        
        quotes=UILabel()
        quotes.frame=CGRect(x: 250 , y: 100 , width: 150, height: 40)
        quotes.text="QUOTE"
        view.addSubview(quotes)
        
        quotesTextField=UITextField()
        quotesTextField.frame=CGRect(x: 250, y: 100, width: 150, height: 40)
        view.addSubview(quotesTextField)
        
        
        quotesButton=UIButton(type: UIButtonType.system)
        quotesButton.frame=CGRect(x: 20, y:100 , width: 150, height:40)
        quotesButton.backgroundColor=UIColor.yellow
        quotesButton.setTitle("QUOTE", for: UIControlState.normal)
        quotesButton.addTarget(self, action: #selector(quoteButtonTap), for: UIControlEvents.touchUpInside)
        view.addSubview(quotesButton)
        
    //STATES
        
        states=UILabel()
        states.frame=CGRect(x: 250 , y: 150 , width: 150, height: 40)
        states.text="STATES"
        view.addSubview(states)
        
        statesTextField=UITextField()
        statesTextField.frame=CGRect(x: 250, y: 150, width: 150, height: 40)
        view.addSubview(statesTextField)
        
        statesButton=UIButton(type: UIButtonType.system)
        statesButton.frame=CGRect(x: 20, y:150 , width: 150, height:40)
        statesButton.backgroundColor=UIColor.yellow
        statesButton.setTitle("STATES", for: UIControlState.normal)
        statesButton.addTarget(self, action: #selector(statesButtonTap), for: UIControlEvents.touchUpInside)
        view.addSubview(statesButton)
        
        
    //CITIES
        
        cities=UILabel()
        cities.frame=CGRect(x: 250 , y: 200 , width: 150, height: 40)
        cities.text="CITIES"
        view.addSubview(cities)
        
        citiesTextField=UITextField()
        citiesTextField.frame=CGRect(x: 250, y: 200, width: 150, height: 40)
        view.addSubview(citiesTextField)
        
        
        citiesButton=UIButton(type: UIButtonType.system)
        citiesButton.frame=CGRect(x: 20, y:200 , width: 150, height:40)
        citiesButton.backgroundColor=UIColor.yellow
        citiesButton.setTitle("CITIES", for: UIControlState.normal)
        citiesButton.addTarget(self, action: #selector(citiesButtonTap), for: UIControlEvents.touchUpInside)
        view.addSubview(citiesButton)
        
   //LOGIN BUTTON DETAILS
        
        //FIRST NAME
        
        firstNameLbl=UILabel()
        firstNameLbl.frame=CGRect(x: 250 , y: 250 , width: 150, height: 40)
        firstNameLbl.text="FIRST NAME"
        view.addSubview(firstNameLbl)
        
        firstNameTextField=UITextField()
        firstNameTextField.frame=CGRect(x: 250, y: 250, width: 150, height: 40)
        view.addSubview(firstNameTextField)
        
        
        //BATCH ID
        
        batchIDLbl=UILabel()
        batchIDLbl.frame=CGRect(x: 250 , y: 300 , width: 150, height: 40)
        batchIDLbl.text="BATCH ID"
        view.addSubview(batchIDLbl)
        
        batchIDTextField=UITextField()
        batchIDTextField.frame=CGRect(x: 250, y: 300, width: 150, height: 40)
        view.addSubview(batchIDTextField)
        
        
        //STUDENT ID
        
        studentIDLbl=UILabel()
        studentIDLbl.frame=CGRect(x: 250 , y: 350 , width: 150, height: 40)
        studentIDLbl.text="SRUDENT ID"
        view.addSubview(studentIDLbl)
        
        studentIDTextField=UITextField()
        studentIDTextField.frame=CGRect(x: 250, y: 350, width: 150, height: 40)
        view.addSubview(studentIDTextField)
        
        
        //STUDENT ID
        
        getStudentDetailsLbl=UILabel()
        getStudentDetailsLbl.frame=CGRect(x: 250 , y: 400 , width: 150, height: 40)
        getStudentDetailsLbl.text="GET STUDENT DETAILS"
        view.addSubview(getStudentDetailsLbl)
        
        getStudentDetailsTextField=UITextField()
        getStudentDetailsTextField.frame=CGRect(x: 250, y: 400, width: 150, height: 40)
        view.addSubview(getStudentDetailsTextField)
        
        
    //LOGIN BUTTON
        
        loginButton=UIButton(type: UIButtonType.system)
        loginButton.frame=CGRect(x: 20, y:250 , width: 150, height:40)
        loginButton.backgroundColor=UIColor.yellow
        loginButton.setTitle("LOGIN", for: UIControlState.normal)
        
        loginButton.addTarget(self, action: #selector(loginButtonTap), for: UIControlEvents.touchUpInside)
        
        view.addSubview(loginButton)
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
  
//ACTOR NAMES
    
    @objc func actorButtonTap()
    {
        getActorsName()
        print("GET DATA WHEN BUTTON WAS TAPPED")
    }
    

    
    
    func getActorsName()
    {
        URLReqObj = URLRequest(url:URL(string:"https://www.brninfotech.com/tws/Quotes.php")!)
        URLReqObj.httpMethod = "POST"
        
        var dataToSend = "type=actor&quantity=1"
        URLReqObj.httpBody = dataToSend.data(using: String.Encoding.utf8)
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: { (Data, ConnectionDetails, err) in
            print("Got Data From Server")
            
            do{
                var actorData = try JSONSerialization.jsonObject(with: Data!, options: JSONSerialization.ReadingOptions.allowFragments)as![String]
                print(actorData)
                
                DispatchQueue.main.async {
                    
                   self.actorsNames.text = actorData[0]
               }
                
            }
            catch
            {
                print("something went wrong")
                
            }
        })
        dataTaskObj.resume()
        
    }
    
//QUOTES
    
    @objc func quoteButtonTap()
    {
        getQuote()
        print("GET DATA WHEN BUTTON WAS TAPPED")
    }
    
    
    
    
    func getQuote()
    {
        URLReqObj = URLRequest(url:URL(string:"https://www.brninfotech.com/tws/Quotes.php")!)
        URLReqObj.httpMethod = "POST"
        
        var dataToSend = "type=quote&quantity=1"
        URLReqObj.httpBody = dataToSend.data(using: String.Encoding.utf8)
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: { (Data, ConnectionDetails, err) in
            print("Got Data From Server")
            
            do{
                var quoteData = try JSONSerialization.jsonObject(with: Data!, options: JSONSerialization.ReadingOptions.allowFragments)as![String]
                print(quoteData)
                
                DispatchQueue.main.async {
                    
                    self.quotes.text = quoteData[0]
                }
                
            }
            catch
            {
                print("something went wrong")
                
            }
        })
        dataTaskObj.resume()
        
    }
    
//STATES
    
    @objc func statesButtonTap()
    {
        statesDetails()
        print("GET DATA WHEN BUTTON WAS TAPPED")
    }
    
    
    func statesDetails()
    {
        URLReqObj = URLRequest(url:URL(string:"https://www.brninfotech.com/tws/IndiaDetails.php?type=state&quantity=1")!)
        
        URLReqObj.httpMethod = "GET"
        
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: { (Data, ConnectionDetails, err) in
            print("Got Data From Server")
            
            do{
                var statesData = try JSONSerialization.jsonObject(with: Data!, options: JSONSerialization.ReadingOptions.allowFragments)as![String]
                print(statesData)
                
                DispatchQueue.main.async {
                    
                    self.states.text = statesData[0]
                }
                
            }
            catch
            {
                print("something went wrong")
                
            }
        })
        dataTaskObj.resume()
        
    }
    
 //CITIES
    
    @objc func citiesButtonTap()
    {
        citiesDetails()
        print("GET DATA WHEN BUTTON WAS TAPPED")
    }
    
    
    func citiesDetails()
    {
        URLReqObj = URLRequest(url:URL(string:"https://www.brninfotech.com/tws/IndiaDetails.php?type=city&quantity=1")!)
        
        URLReqObj.httpMethod = "GET"
        
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: { (Data, ConnectionDetails, err) in
            print("Got Data From Server")
            
            do{
                var citiesData = try JSONSerialization.jsonObject(with: Data!, options: JSONSerialization.ReadingOptions.allowFragments)as! [String]
                print(citiesData)
                
                DispatchQueue.main.async {
                    
                    self.cities.text = citiesData[0]
                }
                
            }
            catch
            {
                print("something went wrong")
                
            }
        })
        dataTaskObj.resume()
        
    }
    
    
    //PULSE DETAILS
    
    
    @objc func loginButtonTap()
    {
        loginDetails()
        print("GET DATA WHEN BUTTON WAS TAPPED")
    }
    
    func loginDetails()
    {
        URLReqObj = URLRequest(url:URL(string:"https://www.brninfotech.com/pulse/modules/admin/ValidateLogin.php")!)
        
        URLReqObj.httpMethod = "POST"
        
        var dataToSend = "registeredEmail=reshmasmile468@gmail.com&registeredPassword=ruksi468&funcName=verifyLogin"
        
        URLReqObj.httpBody = dataToSend.data(using: String.Encoding.utf8)
        
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: { (Data, ConnectionDetails, err) in
            print("Got Data From Server")
            
            do{
                var convertedData = try JSONSerialization.jsonObject(with: Data!, options: JSONSerialization.ReadingOptions.allowFragments) as! Dictionary<String,Any>
                print(convertedData)
                
                DispatchQueue.main.async {
                    
                    self.firstNameLbl.text = "\(convertedData["firstName"]!)"
                    
                    self.batchIDLbl.text = "\(convertedData["batchID"]!)"
                    
                    self.studentIDLbl.text = "\(convertedData["studentID"]!)"
                    
                    self.getStudentDetailsLbl.text = "\(convertedData["registeredEmail"]!)"
                    
                    
                }
                
            }
            catch
            {
                print("something went wrong")
                
            }
        })
        dataTaskObj.resume()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

