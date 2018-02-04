//
//  ViewController.swift
//  Music
//
//  Created by Rushil Patel on 1/15/18.
//  Copyright © 2018 Rushil Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var staffView: TrebleStaffView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        let notes = [Note(pitch: .F, duration: .whole, durationModifier: .none, octave: .c4),
                     Note(pitch: .E, duration: .whole, durationModifier: .none, octave: .c5),
                     Note(pitch: .D, duration: .whole, durationModifier: .none, octave: .c4),
                     Note(pitch: .E, duration: .whole, durationModifier: .none, octave: .c4),]
        staffView.layoutSubviews()
        notes.forEach { note in
            staffView.draw(notation: note)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

