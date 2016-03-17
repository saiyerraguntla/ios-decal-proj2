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
    
    @IBOutlet weak var hangmanImage: UIImageView!
    
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var startOverButton: UIButton!
    
    var imageNumber = 1
    
    var phrase=""
    var guessed=[String]()
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
    
    @IBAction func startOverPressed(sender: AnyObject) {
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
        guessed=[]
        imageNumber=1
        hangmanImage.image = UIImage(named:"hangman1.gif")
        showAllButtons()
    }
    
    func showAllButtons() {
        a.hidden=false
        b.hidden=false
        c.hidden=false
        d.hidden=false
        e.hidden=false
        f.hidden=false
        g.hidden=false
        h.hidden=false
        i.hidden=false
        j.hidden=false
        k.hidden=false
        l.hidden=false
        m.hidden=false
        n.hidden=false
        o.hidden=false
        p.hidden=false
        q.hidden=false
        r.hidden=false
        s.hidden=false
        t.hidden=false
        u.hidden=false
        v.hidden=false
        w.hidden=false
        x.hidden=false
        y.hidden=false
        z.hidden=false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeImage() {
        imageNumber+=1
        if imageNumber==2 {
            hangmanImage.image = UIImage(named:"hangman2.gif")
        }
        else if imageNumber==3 {
            hangmanImage.image = UIImage(named:"hangman3.gif")
        }
        else if imageNumber==4 {
            hangmanImage.image = UIImage(named:"hangman4.gif")
        }
        else if imageNumber==5 {
            hangmanImage.image = UIImage(named:"hangman5.gif")
        }
        else if imageNumber==6 {
            hangmanImage.image = UIImage(named:"hangman6.gif")
        }
        else if imageNumber==7 {
            hangmanImage.image = UIImage(named:"hangman7.gif")
        }
        else {
            showLostPopup()
        }
    }
    
    func showWord() {
        word.text=""
        for letter in phrase.characters {
            if letter == " " {
                word.text = word.text! + " "
            }
            else if guessed.contains(String(letter)) {
                word.text = word.text! + String(letter)
            }
            else {
                word.text = word.text! + "-"
            }
        }
        if !word.text!.containsString("-") {
            showWinPopup()
        }
    }
    
    func showWinPopup() {
        let alert = UIAlertController(title: "YOU WIN", message: "You have correctly guessed the phrase!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func showLostPopup() {
        let alert = UIAlertController(title: "YOU LOSE", message: "You failed to guess the phrase...", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func aPressed(sender: AnyObject) {
        guessed.append("A")
        if phrase.containsString("A") {
            showWord()
        }
        else {
            changeImage()
        }
        a.hidden=true
    }
    
    
    
    @IBAction func bPressed(sender: AnyObject) {
        guessed.append("B")
        if phrase.containsString("B") {
            showWord()
        }
        else {
            changeImage()
        }
        b.hidden=true
    }
    
    @IBAction func cPressed(sender: AnyObject) {
        guessed.append("C")
        if phrase.containsString("C") {
            showWord()
        }
        else {
            changeImage()
        }
        c.hidden=true
    }
    
    @IBAction func dPressed(sender: AnyObject) {
        guessed.append("D")
        if phrase.containsString("D") {
            showWord()
        }
        else {
            changeImage()
        }
        d.hidden=true
    }
    
    @IBAction func ePressed(sender: AnyObject) {
        guessed.append("E")
        if phrase.containsString("E") {
            showWord()
        }
        else {
            changeImage()
        }
        e.hidden=true
    }
    
    @IBAction func fPressed(sender: AnyObject) {
        guessed.append("F")
        if phrase.containsString("F") {
            showWord()
        }
        else {
            changeImage()
        }
        f.hidden=true
    }
    
    @IBAction func gPressed(sender: AnyObject) {
        guessed.append("G")
        if phrase.containsString("G") {
            showWord()
        }
        else {
            changeImage()
        }

        g.hidden=true
    }
    
    @IBAction func hPressed(sender: AnyObject) {
        guessed.append("H")
        if phrase.containsString("H") {
            showWord()
        }
        else {
            changeImage()
        }
        h.hidden=true
    }
    
    @IBAction func iPressed(sender: AnyObject) {
        guessed.append("I")
        if phrase.containsString("I") {
            showWord()
        }
        else {
            changeImage()
        }
        i.hidden=true
    }
    
    @IBAction func jPressed(sender: AnyObject) {
        guessed.append("J")
        if phrase.containsString("J") {
            showWord()
        }
        else {
            changeImage()
        }
        j.hidden=true
    }
    
    @IBAction func lPressed(sender: AnyObject) {
        guessed.append("L")
        if phrase.containsString("L") {
            showWord()
        }
        else {
            changeImage()
        }
        l.hidden=true
    }
    
    @IBAction func mPressed(sender: AnyObject) {
        guessed.append("M")
        if phrase.containsString("M") {
            showWord()
        }
        else {
            changeImage()
        }
        m.hidden=true
    }
    
    @IBAction func nPressed(sender: AnyObject) {
        guessed.append("N")
        if phrase.containsString("N") {
            showWord()
        }
        else {
            changeImage()
        }
        n.hidden=true
    }

    @IBAction func oPressed(sender: AnyObject) {
        guessed.append("O")
        if phrase.containsString("O") {
            showWord()
        }
        else {
            changeImage()
        }
        o.hidden=true
    }
    
    @IBAction func pPressed(sender: AnyObject) {
        guessed.append("P")
        if phrase.containsString("P") {
            showWord()
        }
        else {
            changeImage()
        }
        p.hidden=true
    }
    
    @IBAction func qPressed(sender: AnyObject) {
        guessed.append("Q")
        if phrase.containsString("Q") {
            showWord()
        }
        else {
            changeImage()
        }
        q.hidden=true
    }
    
    @IBAction func kPressed(sender: AnyObject) {
        guessed.append("K")
        if phrase.containsString("K") {
            showWord()
        }
        else {
            changeImage()
        }
        k.hidden=true
    }

    @IBAction func rPressed(sender: AnyObject) {
        guessed.append("R")
        if phrase.containsString("R") {
            showWord()
        }
        else {
            changeImage()
        }
        r.hidden=true
    }
    
    @IBAction func sPressed(sender: AnyObject) {
        guessed.append("S")
        if phrase.containsString("S") {
            showWord()
        }
        else {
            changeImage()
        }
        s.hidden=true
    }
    
    @IBAction func tPressed(sender: AnyObject) {
        guessed.append("T")
        if phrase.containsString("T") {
            showWord()
        }
        else {
            changeImage()
        }
        t.hidden=true
    }
    
    @IBAction func uPressed(sender: AnyObject) {
        guessed.append("U")
        if phrase.containsString("U") {
            showWord()
        }
        else {
            changeImage()
        }
        u.hidden=true
    }
    
    @IBAction func vPressed(sender: AnyObject) {
        guessed.append("V")
        if phrase.containsString("V") {
            showWord()
        }
        else {
            changeImage()
        }
        u.hidden=true
    }
    
    @IBAction func wPressed(sender: AnyObject) {
        guessed.append("W")
        if phrase.containsString("W") {
            showWord()
        }
        else {
            changeImage()
        }
        w.hidden=true
    }
    
    @IBAction func xPressed(sender: AnyObject) {
        guessed.append("X")
        if phrase.containsString("X") {
            showWord()
        }
        else {
            changeImage()
        }
        x.hidden=true
    }
    
    @IBAction func yPressed(sender: AnyObject) {
        guessed.append("Y")
        if phrase.containsString("Y") {
            showWord()
        }
        else {
            changeImage()
        }
        y.hidden=true
    }
    
    @IBAction func zPressed(sender: AnyObject) {
        guessed.append("Z")
        if phrase.containsString("Z") {
            showWord()
        }
        else {
            changeImage()
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
