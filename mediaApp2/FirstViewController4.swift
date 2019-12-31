//
//  FirstViewController4.swift
//  mediaApp2
//
//  Created by R Shantha Kumar on 12/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class FirstViewController4: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var imageVie: UIImageView!
    
    var data:AVPlayer?
    
    
    
    @IBOutlet weak var stackView1: UIStackView!
    
    @IBOutlet weak var stackView2: UIStackView!
    
    
    
    
   
    @IBAction func ACtionPLay(_ sender: Any) {
        
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    meida()
    }

    
    
    
    
       
    
    func meida(){
        
        
        
          var number = 1
        
               imageVie.image = FormData.shared.images[FormData.shared.selectedButton!]
    imageVie.widthAnchor.constraint(equalToConstant: 240).isActive = true
               imageVie.heightAnchor.constraint(equalToConstant: 315).isActive = true
               contentView.addSubview(imageVie!)
        
        
        
        
        
        
        
        
        stackView1.spacing = 30
        stackView2.spacing = 30
        
        print(FormData.shared.songz[FormData.shared.selectedButton!])
        
         if FormData.shared.songz[FormData.shared.selectedButton!].count != 0{
        
        
        for x in 0...FormData.shared.songz[FormData.shared.selectedButton!].count-1
            {
          
               
//                buttond.text = ""
                
                
                var buttond = UIButton()
                //                buttond.text = ""
                                
                                buttond.heightAnchor.constraint(equalToConstant: 50).isActive = true
                                buttond.backgroundColor = .red
                                buttond.tag = x
                                buttond.setTitle("PLAY", for: UIControl.State.normal)
                                buttond.addTarget(self, action: #selector(playAndPause(button:)), for: UIControl.Event.touchUpInside)
                                stackView2.addArrangedSubview(buttond)
    
        
            }
            
            for x in FormData.shared.songTitle[FormData.shared.selectedButton!]
                        {
                            
                      var buttond = UILabel()
                     buttond.text = ""
                    buttond.heightAnchor.constraint(equalToConstant: 50).isActive = true
                            
                            buttond.text = "\(x)"
                            stackView1.addArrangedSubview(buttond)
                    
                
                    
                        }
            
            
        
        
        }
        
    }
    
    
    @objc func playAndPause(button:UIButton)
        
    {
        var audio:AVPlayer!
        
        FormData.shared.buttonTapped = button.tag
        
       let audiod = FormData.shared.songz[FormData.shared.selectedButton!][FormData.shared.buttonTapped!]
        
        
        print(audiod)
        
        var vieplayer = AVPlayerViewController()
        
    
        
        
         data = AVPlayer(url: URL(string: audiod)!)
        
        
            
                vieplayer.player = data
        
                data!.play()
        
      
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
