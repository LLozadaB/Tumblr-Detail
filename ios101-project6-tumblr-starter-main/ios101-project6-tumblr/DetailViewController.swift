//
//  DetailViewController.swift
//  ios101-project6-tumblr
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    var post: Post!
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var captionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImageView)
        }
        
        captionTextView.text = post.caption.trimHTMLTags()
    }
    
}
