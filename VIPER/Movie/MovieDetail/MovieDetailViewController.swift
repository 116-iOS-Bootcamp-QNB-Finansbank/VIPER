//
//  MovieDetailViewController.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    var viewModel: MovieDetailViewModelProtocol! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.viewDidLoad()
    }
}

extension MovieDetailViewController: MovieDetailViewModelDelegate {
    func showMovieDetail(_ movie: MovieDetailPresentation) {
        nameLabel.text = movie.name
        releaseDateLabel.text = movie.releaseDate
        genreLabel.text = movie.genre
    }
}
