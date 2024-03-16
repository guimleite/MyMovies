//
//  ViewController.swift
//  MyMovies
//
//  Created by user250954 on 3/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let fileURL = Bundle.main.url(forResource: "movies", withExtension: "json") else {return}
        print(fileURL.absoluteString)
        
        loadMovies()
    }

    func loadMovies() {
        guard let fileURL = Bundle.main.url(forResource:"movies", withExtension: "json") else {return}
        do{
            let data = try Data(contentsOf: fileURL)
            
            movies = try JSONDecoder().decode([Movie].self, from: data)
            
            for movie in movies{
                print(movie.title, "-", movie.duration)
            }
        }catch{
            print(error.localizedDescription)
        }
        
    }
    

}

