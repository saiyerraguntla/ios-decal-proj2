//
//  GameViewController.swift
//  Hangman
//
//  Created by Shawn D'Souza on 3/3/16.
//  Copyright © 2016 Shawn D'Souza. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var b: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var d: UIButton!
    @IBOutlet weak var e: UIButton!
    @IBOutlet weak var f: UIButton!
    @IBOutlet weak var g: UIButton!
    @IBOutlet weak var h: UIButton!
    @IBOutlet weak var i: UIButton!
    @IBOutlet weak var j: UIButton!
    @IBOutlet weak var k: UIButton!
    @IBOutlet weak var l: UIButton!
    @IBOutlet weak var m: UIButton!
    @IBOutlet weak var n: UIButton!
    @IBOutlet weak var o: UIButton!
    @IBOutlet weak var p: UIButton!
    @IBOutlet weak var q: UIButton!
    @IBOutlet weak var r: UIButton!
    @IBOutlet weak var s: UIButton!    
    @IBOutlet weak var t: UIButton!
    @IBOutlet weak var u: UIButton!
    @IBOutlet weak var v: UIButton!

    @IBOutlet weak var w: UIButton!
    
    @IBOutlet weak var x: UIButton!
    
    @IBOutlet weak var y: UIButton!
    
    @IBOutlet weak var z: UIButton!
    
    
    @IBOutlet weak var word: UILabel!
    
    var phrase=""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let hangmanPhrases = HangmanPhrases()
        phrase = hangmanPhrases.getRandomPhrase()
        print(phrase)
        word.text=""
        for letter in phrase.characters {
            //insert spaces
            if letter == " " {
                word.text = word.text! + " "
            }
            else {
                word.text = word.text! + "-"
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeImage() {
        
    }
    
    @IBAction func aPressed(sender: AnyObject) {
        if phrase.containsString("A") {
            for letter in phrase.characters {
                if letter == "A" {
                    word.text = word.text! + "A"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        a.hidden=true
    }
    
    @IBAction func bPressed(sender: AnyObject) {
        if phrase.containsString("B") {
            word.text=""
            for letter in phrase.characters {
                if letter == "B" {
                    word.text = word.text! + "B"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        b.hidden=true
    }
    
    @IBAction func cPressed(sender: AnyObject) {
        if phrase.containsString("C") {
            word.text=""
            for letter in phrase.characters {
                if letter == "C" {
                    word.text = word.text! + "C"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        c.hidden=true
    }
    
    @IBAction func dPressed(sender: AnyObject) {
        if phrase.containsString("D") {
            word.text=""
            for letter in phrase.characters {
                if letter == "D" {
                    word.text = word.text! + "D"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        d.hidden=true
    }
    
    @IBAction func ePressed(sender: AnyObject) {
        if phrase.containsString("E") {
            word.text=""
            for letter in phrase.characters {
                if letter == "E" {
                    word.text = word.text! + "E"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        e.hidden=true
    }
    
    @IBAction func fPressed(sender: AnyObject) {
        if phrase.containsString("F") {
            word.text=""
            for letter in phrase.characters {
                if letter == "F" {
                    word.text = word.text! + "F"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        f.hidden=true
    }
    
    @IBAction func gPressed(sender: AnyObject) {
        if phrase.containsString("G") {
            word.text=""
            for letter in phrase.characters {
                if letter == "G" {
                    word.text = word.text! + "G"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        g.hidden=true
    }
    
    @IBAction func hPressed(sender: AnyObject) {
        if phrase.containsString("H") {
            word.text=""
            for letter in phrase.characters {
                if letter == "H" {
                    word.text = word.text! + "H"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        h.hidden=true
    }
    
    @IBAction func iPressed(sender: AnyObject) {
        if phrase.containsString("I") {
            word.text=""
            for letter in phrase.characters {
                if letter == "I" {
                    word.text = word.text! + "I"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        i.hidden=true
    }
    
    @IBAction func jPressed(sender: AnyObject) {
        if phrase.containsString("J") {
            word.text=""
            for letter in phrase.characters {
                if letter == "J" {
                    word.text = word.text! + "J"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else{
                    word.text = word.text! + "-"
                }
            }
        }
        j.hidden=true
    }
    
    @IBAction func lPressed(sender: AnyObject) {
        if phrase.containsString("L") {
            word.text=""
            for letter in phrase.characters {
                if letter == "L" {
                    word.text = word.text! + "L"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        l.hidden=true
    }
    
    @IBAction func mPressed(sender: AnyObject) {
        if phrase.containsString("M") {
            word.text=""
            for letter in phrase.characters {
                if letter == "M" {
                    word.text = word.text! + "M"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        m.hidden=true
    }
    
    @IBAction func nPressed(sender: AnyObject) {
        if phrase.containsString("N") {
            word.text=""
            for letter in phrase.characters {
                if letter == "N" {
                    word.text = word.text! + "N"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        n.hidden=true
    }

    @IBAction func oPressed(sender: AnyObject) {
        if phrase.containsString("O") {
            word.text=""
            for letter in phrase.characters {
                if letter == "O" {
                    word.text = word.text! + "O"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        o.hidden=true
    }
    
    @IBAction func pPressed(sender: AnyObject) {
        if phrase.containsString("P") {
            word.text=""
            for letter in phrase.characters {
                if letter == "P" {
                    word.text = word.text! + "P"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        p.hidden=true
    }
    
    @IBAction func qPressed(sender: AnyObject) {
        if phrase.containsString("Q") {
            word.text=""
            for letter in phrase.characters {
                if letter == "Q" {
                    word.text = word.text! + "Q"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        q.hidden=true
    }
    
    @IBAction func kPressed(sender: AnyObject) {
        if phrase.containsString("K") {
            word.text=""
            for letter in phrase.characters {
                if letter == "K" {
                    word.text = word.text! + "K"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        k.hidden=true
    }
    
    @IBAction func rPressed(sender: AnyObject) {
        if phrase.containsString("R") {
            word.text=""
            for letter in phrase.characters {
                if letter == "R" {
                    word.text = word.text! + "R"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else if letter == "-" {
                    word.text = word.text! + "-"
                }
            }
        }
        r.hidden=true
    }
    
    @IBAction func sPressed(sender: AnyObject) {
        if phrase.containsString("S") {
            word.text=""
            for letter in phrase.characters {
                if letter == "S" {
                    word.text = word.text! + "S"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        s.hidden=true
    }
    
    @IBAction func tPressed(sender: AnyObject) {
        if phrase.containsString("T") {
            word.text=""
            for letter in phrase.characters {
                if letter == "T" {
                    word.text = word.text! + "T"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        t.hidden=true
    }
    
    @IBAction func uPressed(sender: AnyObject) {
        if phrase.containsString("U") {
            word.text=""
            for letter in phrase.characters {
                if letter == "U" {
                    word.text = word.text! + "U"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        u.hidden=true
    }
    
    @IBAction func vPressed(sender: AnyObject) {
        if phrase.containsString("U") {
            word.text=""
            for letter in phrase.characters {
                if letter == "U" {
                    word.text = word.text! + "U"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        u.hidden=true
    }
    
    @IBAction func wPressed(sender: AnyObject) {
        if phrase.containsString("W") {
            word.text=""
            for letter in phrase.characters {
                if letter == "W" {
                    word.text = word.text! + "W"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        w.hidden=true
    }
    
    @IBAction func xPressed(sender: AnyObject) {
        if phrase.containsString("X") {
            word.text=""
            for letter in phrase.characters {
                if letter == "X" {
                    word.text = word.text! + "X"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        x.hidden=true
    }
    
    @IBAction func yPressed(sender: AnyObject) {
        if phrase.containsString("Y") {
            word.text=""
            for letter in phrase.characters {
                if letter == "Y" {
                    word.text = word.text! + "Y"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        y.hidden=true
    }
    
    @IBAction func zPressed(sender: AnyObject) {
        if phrase.containsString("Z") {
            word.text=""
            for letter in phrase.characters {
                if letter == "Z" {
                    word.text = word.text! + "Z"
                }
                else if letter == " " {
                    word.text = word.text! + " "
                }
                else {
                    word.text = word.text! + "-"
                }
            }
        }
        z.hidden=true
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
