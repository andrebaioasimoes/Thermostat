//
//  MainWindowController.swift
//  Thermostat
//
//  Created by André Simões on 26/01/16.
//  Copyright © 2016 Andre Simoes. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    //var temperature = 68
    //dynamic var temperature = 68
    
    private var privateTemperature = 68
    
    dynamic var temperature: Int {
        set {
            print("set temperature to \(newValue)")
            privateTemperature = newValue
        }
        get {
            print("get temperature")
            return privateTemperature
        }

    }
    
    dynamic var isOn = true
    
    override var windowNibName: String {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func makeWarmer(sender: NSButton) {
        //let newTemperature = temperature + 1
        //setValue(newTemperature, forKey: "temperature")
        //willChangeValueForKey("temperature")
        temperature++
        //didChangeValueForKey("temperature")
    }
    
    @IBAction func makeCooler(sender: NSButton) {
        //let newTemperature = temperature - 1
        //setValue(newTemperature, forKey: "temperature")
        //willChangeValueForKey("temperature")
        temperature--
        //didChangeValueForKey("temperature")
    }
    
    
    
}
