//
//  PhotoListResponseMock.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 17/01/24.
//

@testable import AnimalLibrary
import Foundation

extension PhotoListResponse {
    
    static func stub200() -> PhotoListResponse {
        mock200().toObject(PhotoListResponse.self)!
    }
    
    static func mock200() -> Data {
        let jsonString = """
        {
            "page": 1,
            "per_page": 15,
            "photos": [
                {
                    "id": 1054655,
                    "width": 3461,
                    "height": 2150,
                    "url": "https://www.pexels.com/photo/wildlife-photography-of-elephant-during-golden-hour-1054655/",
                    "photographer": "Harvey Sapir",
                    "photographer_url": "https://www.pexels.com/@hsapir",
                    "photographer_id": 396264,
                    "avg_color": "#8D6151",
                    "src": {
                        "original": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg",
                        "large2x": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Wildlife Photography of Elephant during Golden Hour"
                },
                {
                    "id": 53125,
                    "width": 2000,
                    "height": 3008,
                    "url": "https://www.pexels.com/photo/grey-elephant-beside-green-leafed-tree-53125/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#80836F",
                    "src": {
                        "original": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg",
                        "large2x": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/53125/elephant-tusk-ivory-animal-53125.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Grey Elephant Beside Green Leafed Tree"
                },
                {
                    "id": 133394,
                    "width": 4293,
                    "height": 2975,
                    "url": "https://www.pexels.com/photo/elephant-calf-133394/",
                    "photographer": "Anthony 🙂",
                    "photographer_url": "https://www.pexels.com/@inspiredimages",
                    "photographer_id": 37464,
                    "avg_color": "#8C9083",
                    "src": {
                        "original": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg",
                        "large2x": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Elephant Calf"
                },
                {
                    "id": 982021,
                    "width": 5472,
                    "height": 3648,
                    "url": "https://www.pexels.com/photo/black-elephant-near-trees-982021/",
                    "photographer": "Venkat Ragavan",
                    "photographer_url": "https://www.pexels.com/@venkat-ragavan-363659",
                    "photographer_id": 363659,
                    "avg_color": "#7B9967",
                    "src": {
                        "original": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg",
                        "large2x": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Black Elephant Near Trees"
                },
                {
                    "id": 1054666,
                    "width": 3374,
                    "height": 2482,
                    "url": "https://www.pexels.com/photo/gray-elephant-1054666/",
                    "photographer": "Harvey Sapir",
                    "photographer_url": "https://www.pexels.com/@hsapir",
                    "photographer_id": 396264,
                    "avg_color": "#5C574E",
                    "src": {
                        "original": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg",
                        "large2x": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1054666/pexels-photo-1054666.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Gray Elephant"
                },
                {
                    "id": 70080,
                    "width": 1920,
                    "height": 1280,
                    "url": "https://www.pexels.com/photo/grey-elephant-throwing-sand-with-trunk-near-green-trees-70080/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#A98569",
                    "src": {
                        "original": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg",
                        "large2x": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/70080/elephant-africa-african-elephant-kenya-70080.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Grey Elephant Throwing Sand With Trunk Near Green Trees"
                },
                {
                    "id": 66898,
                    "width": 1920,
                    "height": 1280,
                    "url": "https://www.pexels.com/photo/1-elephant-beside-on-baby-elephant-66898/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#C38E5F",
                    "src": {
                        "original": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg",
                        "large2x": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "1 Elephant Beside on Baby Elephant"
                },
                {
                    "id": 3739327,
                    "width": 2783,
                    "height": 4947,
                    "url": "https://www.pexels.com/photo/gray-elephant-walking-on-brown-grass-field-3739327/",
                    "photographer": "FUTURE KIIID",
                    "photographer_url": "https://www.pexels.com/@futurekiiid",
                    "photographer_id": 466989,
                    "avg_color": "#736965",
                    "src": {
                        "original": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg",
                        "large2x": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/3739327/pexels-photo-3739327.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Gray Elephant Walking on Brown Grass Field"
                },
                {
                    "id": 1750820,
                    "width": 4000,
                    "height": 6000,
                    "url": "https://www.pexels.com/photo/gray-elephant-1750820/",
                    "photographer": "Rudy Kirchner",
                    "photographer_url": "https://www.pexels.com/@rudy-kirchner-278171",
                    "photographer_id": 278171,
                    "avg_color": "#2E2930",
                    "src": {
                        "original": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg",
                        "large2x": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1750820/pexels-photo-1750820.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Gray Elephant"
                },
                {
                    "id": 35693,
                    "width": 3456,
                    "height": 5184,
                    "url": "https://www.pexels.com/photo/brown-elephant-on-ground-35693/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#908B6E",
                    "src": {
                        "original": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg",
                        "large2x": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/35693/elephant-big-nature-wildlife.jpg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Brown Elephant on Ground"
                },
                {
                    "id": 33394,
                    "width": 4992,
                    "height": 3328,
                    "url": "https://www.pexels.com/photo/grayscale-photo-of-2-elephants-33394/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#A3A3A3",
                    "src": {
                        "original": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg",
                        "large2x": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/33394/elephant-ivory-animals-africa.jpg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Grayscale Photo of 2 Elephants"
                },
                {
                    "id": 1289845,
                    "width": 5472,
                    "height": 3648,
                    "url": "https://www.pexels.com/photo/gray-elephant-figurine-1289845/",
                    "photographer": "Magda Ehlers",
                    "photographer_url": "https://www.pexels.com/@magda-ehlers-pexels",
                    "photographer_id": 102775,
                    "avg_color": "#CDCCCB",
                    "src": {
                        "original": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg",
                        "large2x": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1289845/pexels-photo-1289845.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Gray Elephant Figurine"
                },
                {
                    "id": 68550,
                    "width": 2639,
                    "height": 1843,
                    "url": "https://www.pexels.com/photo/3-grey-elephants-under-yellow-sky-68550/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#8F6625",
                    "src": {
                        "original": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg",
                        "large2x": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/68550/thailand-elephant-sunset-nature-68550.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "3 Grey Elephants Under Yellow Sky"
                },
                {
                    "id": 978629,
                    "width": 5184,
                    "height": 3888,
                    "url": "https://www.pexels.com/photo/elephant-978629/",
                    "photographer": "Richard de Reus",
                    "photographer_url": "https://www.pexels.com/@elgiganto",
                    "photographer_id": 313657,
                    "avg_color": "#727E76",
                    "src": {
                        "original": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg",
                        "large2x": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/978629/pexels-photo-978629.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Elephant"
                },
                {
                    "id": 750536,
                    "width": 6095,
                    "height": 4069,
                    "url": "https://www.pexels.com/photo/close-up-photo-of-baby-elephant-750536/",
                    "photographer": "Adriaan Greyling",
                    "photographer_url": "https://www.pexels.com/@monkeytactics",
                    "photographer_id": 234777,
                    "avg_color": "#8D7456",
                    "src": {
                        "original": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg",
                        "large2x": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/750536/pexels-photo-750536.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Close-up Photo of Baby Elephant"
                }
            ],
            "total_results": 2149,
            "next_page": "https://api.pexels.com/v1/search/?page=2&per_page=15&query=Elephant"
        }
        """
        
        return jsonString.toJsonData()
    }
    
}
