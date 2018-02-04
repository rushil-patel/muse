//
//  StaffView.swift
//  Music
//
//  Created by Rushil Patel on 1/18/18.
//  Copyright © 2018 Rushil Patel. All rights reserved.
//

import UIKit

enum Pitch: Int, Comparable {
    case A,B,C,D,E,F,G
    
    public static func < (a: Pitch, b: Pitch) -> Bool {
        return a.rawValue < b.rawValue
    }
}

enum Duration {
    case sixteenth, eighth, quarter, half, whole, none
}

enum DurationModifier {
    case dot, tie, none
}

enum Octave: Int, Comparable {
    case c0,c1, c2, c3, c4, c5, c6, c7,c8
    
    public static func < (a: Octave, b: Octave) -> Bool {
        return a.rawValue < b.rawValue
    }
}

protocol Notation {
    func forNote(handler: (Note) -> Void)
}

struct Note: Notation {
    func forNote(handler: (Note) -> Void) {
        handler(self)
    }
    
    var pitch: Pitch
    var duration: Duration
    var durationModifier: DurationModifier
    var octave: Octave
}

class BassStaffView: Staff {
    
    var cleffView: UIView!
    //visibility A3 - G2, oustide draw ledger
    //note range, B3 - A0
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let cleffView = BassCleffView(frame: self.frame)
        let cleffWidth = 50
        //bass.resizeToFit(withWidth: CGFloat(cleffWidth))
        self.addSubview(cleffView)
    }
}

class TrebleStaffView: Staff {
    
    //visibility, E4 - F5, outside draw ledger
    //note range, C4 - C8
    
    var cleffView: UIView!
    override lazy var numKeys: CGFloat = { 29 } ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let trebleFrame = CGRect(origin: .zero, size: self.frame.size.scale(by: 1.5))
        self.cleffView = TrebleCleffView(frame: trebleFrame)
        self.cleffView.center = self.frame.center
        let cleffWidth = 50
        //treble.resizeToFit(withWidth: CGFloat(cleffWidth))
       // self.addSubview(self.cleffView)
    }
    
    override func setupView() {
        
        let cleffBottomNote = Note(pitch: .C, duration: .none, durationModifier: .none, octave: .c4)
        let cleffTopNote = Note(pitch: .B, duration: .none, durationModifier: .none, octave: .c5)

        drawLines()
        
    }
    
    private func drawLines() {
        
        let firstVisible = Note(pitch: .E, duration: .none, durationModifier: .none, octave: .c4)
        let lastVisibile = Note(pitch: .F, duration: .none, durationModifier: .none, octave: .c5)
        
        guard let topBound = position(for: lastVisibile), let bottomBound = position(for: firstVisible) else {
            return
        }
        
        placemarks[bottomBound...topBound].enumerated()
            .forEach { (n,mark) in
                if n % 2 == 0 {
                    let line = self.staffLine
                    line.frame.origin.y =  self.frame.height - mark
                    line.tag = n
                    self.addSubview(line)
                }
            }
    }
    
    private func position(for note: Note) -> Int? {
        let keyCount = 7
        
        guard note.pitch >= .C || note.octave >= .c4 else {
            return nil
        }
        guard note.octave >= .c4 else {
            return nil
        }
        
        let base = { () -> Int in
            switch note.pitch {
            case .A: return -1
            case .B: return -2
            case .C: return 0
            case .D: return 1
            case .E: return 2
            case .F: return 3
            case .G: return 4
            }
        }()

        let offset = { () -> Int? in
            
            switch note.octave {
            case .c4: return 0
            case .c5: return 1
            case .c6: return 2
            case .c7: return 3
            case .c8: return 4
            default: return nil
            }
        }()
        
        guard let _ = offset else {
            return nil
        }

        return keyCount * offset! + base

    }
    
    private func draw(note: Note, at index: Int) {
        guard self.placemarks.count > index, index >= 0 else {
            return
        }
        let mark = self.placemarks[index]
        let noteDim = self.intervalDistance
        let note = NoteView(frame: CGRect(origin: .zero, size: CGSize(width: noteDim, height: noteDim)))
        note.frame.origin.y = self.frame.height - mark - note.frame.size.height/2 + lineHeight/2
        note.frame.origin.x = self.frame.width/2 - note.frame.size.width/2
        self.addSubview(note)
        self.sendSubview(toBack: note)
    }
    
    override func draw(notation: Notation) {
        notation.forNote { note in
            if let idx = self.position(for: note) {
                self.draw(note: note, at: idx)
            }
        }
    }
}

class Staff: UIView {
    
    lazy var lineHeight: CGFloat = {
        let lineThickness: CGFloat = 0.01
        return self.frame.height * lineThickness
    }()
    
    lazy open var numKeys: CGFloat =  { 20 }()
    lazy var intervalDistance: CGFloat = {
        return self.frame.height / (numKeys)
    }()
    
    lazy var placemarks: [CGFloat] = {
        var m: [CGFloat] = []
        for i in 0..<Int(numKeys) {
            m.append( CGFloat(CGFloat(i) * intervalDistance - (lineHeight / 2)))
        }
        return m
    }()
    
    var staffLine: UIView {
        let rect = CGRect.init(x: 0, y: 0, width: self.frame.width, height: lineHeight)
        let line = UIView.init(frame: rect)
        line.backgroundColor = UIColor.black
        return line
    }
    var lines: [UIView] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    //functions to be overridden
    open func setupView() {}
    open func draw(notation: Notation) {}
}

