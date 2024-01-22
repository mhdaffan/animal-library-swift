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
    
    static func stubNextPage200() -> PhotoListResponse {
        mockNextPage200().toObject(PhotoListResponse.self)!
    }
    
    static func mock200() -> Data {
        let jsonString = """
        {
            "page": 1,
            "per_page": 15,
            "photos": [
                {
                    "id": 18039316,
                    "width": 4928,
                    "height": 3264,
                    "url": "https://www.pexels.com/photo/lion-lying-on-ground-in-wild-nature-18039316/",
                    "photographer": "Kallie Calitz",
                    "photographer_url": "https://www.pexels.com/@kallie-calitz-692543508",
                    "photographer_id": 692543508,
                    "avg_color": "#868581",
                    "src": {
                        "original": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg",
                        "large2x": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Lion Lying on Ground in Wild Nature"
                },
                {
                    "id": 5487407,
                    "width": 4016,
                    "height": 5371,
                    "url": "https://www.pexels.com/photo/lion-resting-head-on-lioness-5487407/",
                    "photographer": "Jurie Maree",
                    "photographer_url": "https://www.pexels.com/@jurie-maree-3665535",
                    "photographer_id": 3665535,
                    "avg_color": "#B49271",
                    "src": {
                        "original": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg",
                        "large2x": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/5487407/pexels-photo-5487407.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Brown Lion Lying on Brown Grass"
                },
                {
                    "id": 4827933,
                    "width": 3601,
                    "height": 5402,
                    "url": "https://www.pexels.com/photo/mosaic-on-the-wall-4827933/",
                    "photographer": "Nataliya Vaitkevich",
                    "photographer_url": "https://www.pexels.com/@n-voitkevich",
                    "photographer_id": 2906295,
                    "avg_color": "#AAAAA3",
                    "src": {
                        "original": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg",
                        "large2x": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/4827933/pexels-photo-4827933.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Blue and White Floral Wall Decor"
                },
                {
                    "id": 6143362,
                    "width": 4000,
                    "height": 6000,
                    "url": "https://www.pexels.com/photo/lion-statues-at-the-entrance-of-a-building-6143362/",
                    "photographer": "Oscar Portan",
                    "photographer_url": "https://www.pexels.com/@divineleaders",
                    "photographer_id": 2336245,
                    "avg_color": "#50595E",
                    "src": {
                        "original": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg",
                        "large2x": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/6143362/pexels-photo-6143362.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Grey Lion Statue Near Brown Wooden Table"
                },
                {
                    "id": 2994962,
                    "width": 4000,
                    "height": 2667,
                    "url": "https://www.pexels.com/photo/a-lion-statue-in-front-of-the-gate-in-the-tiananmen-square-beijing-china-2994962/",
                    "photographer": "Markus Winkler",
                    "photographer_url": "https://www.pexels.com/@markus-winkler-1430818",
                    "photographer_id": 1430818,
                    "avg_color": "#7F6B5E",
                    "src": {
                        "original": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg",
                        "large2x": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2994962/pexels-photo-2994962.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Free stock photo of animal, architecture, art"
                },
                {
                    "id": 33045,
                    "width": 4252,
                    "height": 2835,
                    "url": "https://www.pexels.com/photo/close-up-photography-of-brown-lion-33045/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#3F3527",
                    "src": {
                        "original": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg",
                        "large2x": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Close-up Photography of Brown Lion"
                },
                {
                    "id": 10079452,
                    "width": 3240,
                    "height": 4050,
                    "url": "https://www.pexels.com/photo/bed-on-colorful-flowers-on-cape-10079452/",
                    "photographer": "Mo Eid",
                    "photographer_url": "https://www.pexels.com/@mo-eid-1268975",
                    "photographer_id": 1268975,
                    "avg_color": "#776466",
                    "src": {
                        "original": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg",
                        "large2x": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/10079452/pexels-photo-10079452.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Bed on Colorful Flowers on Cape"
                },
                {
                    "id": 2220336,
                    "width": 3461,
                    "height": 2190,
                    "url": "https://www.pexels.com/photo/close-up-photo-of-lion-s-head-2220336/",
                    "photographer": "Alexas Fotos",
                    "photographer_url": "https://www.pexels.com/@alexasfotos",
                    "photographer_id": 434602,
                    "avg_color": "#4D3320",
                    "src": {
                        "original": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg",
                        "large2x": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2220336/pexels-photo-2220336.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Close-up Photo of Lion's Head"
                },
                {
                    "id": 2220337,
                    "width": 6000,
                    "height": 4000,
                    "url": "https://www.pexels.com/photo/brown-lion-2220337/",
                    "photographer": "Alexas Fotos",
                    "photographer_url": "https://www.pexels.com/@alexasfotos",
                    "photographer_id": 434602,
                    "avg_color": "#271B12",
                    "src": {
                        "original": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg",
                        "large2x": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Brown Lion"
                },
                {
                    "id": 14659604,
                    "width": 2624,
                    "height": 3936,
                    "url": "https://www.pexels.com/photo/head-of-lion-14659604/",
                    "photographer": "Ardit Mbrati",
                    "photographer_url": "https://www.pexels.com/@ardit-mbrati-216809103",
                    "photographer_id": 216809103,
                    "avg_color": "#5A5247",
                    "src": {
                        "original": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg",
                        "large2x": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/14659604/pexels-photo-14659604.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Head of Lion"
                },
                {
                    "id": 4032590,
                    "width": 4704,
                    "height": 5466,
                    "url": "https://www.pexels.com/photo/a-roaring-lion-4032590/",
                    "photographer": "Petr Ganaj",
                    "photographer_url": "https://www.pexels.com/@ganajp",
                    "photographer_id": 2392193,
                    "avg_color": "#695938",
                    "src": {
                        "original": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg",
                        "large2x": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/4032590/pexels-photo-4032590.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "A Roaring Lion "
                },
                {
                    "id": 3498323,
                    "width": 4288,
                    "height": 2848,
                    "url": "https://www.pexels.com/photo/shallow-focus-photo-of-two-brown-lions-3498323/",
                    "photographer": "Iurii Ivashchenko",
                    "photographer_url": "https://www.pexels.com/@iurii-ivashchenko-1886156",
                    "photographer_id": 1886156,
                    "avg_color": "#979895",
                    "src": {
                        "original": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg",
                        "large2x": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/3498323/pexels-photo-3498323.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Shallow Focus Photo of Two Brown Lions"
                },
                {
                    "id": 1912176,
                    "width": 4912,
                    "height": 7360,
                    "url": "https://www.pexels.com/photo/photo-of-lion-lying-on-ground-1912176/",
                    "photographer": "Frans van Heerden",
                    "photographer_url": "https://www.pexels.com/@frans-van-heerden-201846",
                    "photographer_id": 201846,
                    "avg_color": "#1E1815",
                    "src": {
                        "original": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg",
                        "large2x": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1912176/pexels-photo-1912176.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Photo of Lion Lying on Ground"
                },
                {
                    "id": 40803,
                    "width": 3594,
                    "height": 2396,
                    "url": "https://www.pexels.com/photo/adult-lion-playing-with-lion-cub-40803/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#805C38",
                    "src": {
                        "original": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg",
                        "large2x": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/40803/lion-animal-predator-big-cat-40803.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Adult Lion Playing With Lion Cub"
                },
                {
                    "id": 68421,
                    "width": 5184,
                    "height": 3456,
                    "url": "https://www.pexels.com/photo/white-long-coat-lion-68421/",
                    "photographer": "Piet Bakker",
                    "photographer_url": "https://www.pexels.com/@piet-bakker-15280",
                    "photographer_id": 15280,
                    "avg_color": "#A7A694",
                    "src": {
                        "original": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg",
                        "large2x": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/68421/pexels-photo-68421.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "White Long Coat Lion"
                }
            ],
            "total_results": 3245,
            "next_page": "https://api.pexels.com/v1/search/?page=2&per_page=15&query=Cape+Lion"
        }
        """
        
        return jsonString.toJsonData()
    }
    
    static func mockNextPage200() -> Data {
        let jsonString = """
        {
            "page": 2,
            "per_page": 15,
            "photos": [
                {
                    "id": 730539,
                    "width": 2061,
                    "height": 1998,
                    "url": "https://www.pexels.com/photo/two-brown-lions-lying-on-grass-730539/",
                    "photographer": "Gary Whyte",
                    "photographer_url": "https://www.pexels.com/@gary-whyte-228069",
                    "photographer_id": 228069,
                    "avg_color": "#9E8A7F",
                    "src": {
                        "original": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg",
                        "large2x": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/730539/pexels-photo-730539.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Two Brown Lions Lying on Grass"
                },
                {
                    "id": 14918399,
                    "width": 2000,
                    "height": 2500,
                    "url": "https://www.pexels.com/photo/close-up-of-a-lion-head-14918399/",
                    "photographer": "paul jousseau",
                    "photographer_url": "https://www.pexels.com/@paul-jousseau-406314056",
                    "photographer_id": 406314056,
                    "avg_color": "#574129",
                    "src": {
                        "original": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg",
                        "large2x": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/14918399/pexels-photo-14918399.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Close Up of a Lion Head"
                },
                {
                    "id": 2955703,
                    "width": 5184,
                    "height": 3456,
                    "url": "https://www.pexels.com/photo/side-view-photo-of-a-male-lion-2955703/",
                    "photographer": "Dani Muchow",
                    "photographer_url": "https://www.pexels.com/@danimuchow",
                    "photographer_id": 1534110,
                    "avg_color": "#2A221C",
                    "src": {
                        "original": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg",
                        "large2x": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2955703/pexels-photo-2955703.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Side View Photo Of A Male Lion"
                },
                {
                    "id": 3284268,
                    "width": 2458,
                    "height": 3072,
                    "url": "https://www.pexels.com/photo/brown-lion-3284268/",
                    "photographer": "Callum  Hilton",
                    "photographer_url": "https://www.pexels.com/@skelm",
                    "photographer_id": 1688269,
                    "avg_color": "#4A413C",
                    "src": {
                        "original": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg",
                        "large2x": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/3284268/pexels-photo-3284268.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Brown Lion"
                },
                {
                    "id": 2674052,
                    "width": 4464,
                    "height": 2976,
                    "url": "https://www.pexels.com/photo/photo-of-lion-on-grass-field-2674052/",
                    "photographer": "Elena Blessing",
                    "photographer_url": "https://www.pexels.com/@elena-blessing-355784",
                    "photographer_id": 355784,
                    "avg_color": "#6E5541",
                    "src": {
                        "original": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg",
                        "large2x": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Photo of Lion on Grass Field"
                },
                {
                    "id": 1607862,
                    "width": 3985,
                    "height": 5455,
                    "url": "https://www.pexels.com/photo/person-in-black-coat-and-hat-with-plague-doctor-mask-1607862/",
                    "photographer": "Jeswin  Thomas",
                    "photographer_url": "https://www.pexels.com/@jeswin",
                    "photographer_id": 202755,
                    "avg_color": "#4D4442",
                    "src": {
                        "original": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg",
                        "large2x": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1607862/pexels-photo-1607862.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Person in Black Coat and Hat With Plague Doctor Mask"
                },
                {
                    "id": 1571734,
                    "width": 4272,
                    "height": 2848,
                    "url": "https://www.pexels.com/photo/woman-holding-black-flag-1571734/",
                    "photographer": "Engin Akyurt",
                    "photographer_url": "https://www.pexels.com/@enginakyurt",
                    "photographer_id": 631997,
                    "avg_color": "#4C5A70",
                    "src": {
                        "original": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg",
                        "large2x": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/1571734/pexels-photo-1571734.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Woman Holding Black Flag"
                },
                {
                    "id": 6436445,
                    "width": 2112,
                    "height": 2901,
                    "url": "https://www.pexels.com/photo/wild-lion-standing-with-opened-mouth-in-nature-in-sunny-day-6436445/",
                    "photographer": "Charl Durand",
                    "photographer_url": "https://www.pexels.com/@charldurand",
                    "photographer_id": 16613831,
                    "avg_color": "#9C8561",
                    "src": {
                        "original": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg",
                        "large2x": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/6436445/pexels-photo-6436445.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Wild lion standing with opened mouth in nature in sunny day"
                },
                {
                    "id": 6303759,
                    "width": 4217,
                    "height": 2051,
                    "url": "https://www.pexels.com/photo/brave-doctor-in-flying-superhero-cape-with-fist-stretched-6303759/",
                    "photographer": "Klaus Nielsen",
                    "photographer_url": "https://www.pexels.com/@klaus-nielsen",
                    "photographer_id": 6928139,
                    "avg_color": "#BFA5AC",
                    "src": {
                        "original": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg",
                        "large2x": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Brave doctor in flying superhero cape with fist stretched"
                },
                {
                    "id": 2270848,
                    "width": 4846,
                    "height": 3323,
                    "url": "https://www.pexels.com/photo/brown-lion-2270848/",
                    "photographer": "Ralph",
                    "photographer_url": "https://www.pexels.com/@ralph-407274",
                    "photographer_id": 407274,
                    "avg_color": "#3E2C1F",
                    "src": {
                        "original": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg",
                        "large2x": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2270848/pexels-photo-2270848.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Brown Lion"
                },
                {
                    "id": 2323411,
                    "width": 3944,
                    "height": 2585,
                    "url": "https://www.pexels.com/photo/lion-2323411/",
                    "photographer": "Ralph",
                    "photographer_url": "https://www.pexels.com/@ralph-407274",
                    "photographer_id": 407274,
                    "avg_color": "#634C3F",
                    "src": {
                        "original": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg",
                        "large2x": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2323411/pexels-photo-2323411.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Lion"
                },
                {
                    "id": 7139794,
                    "width": 3648,
                    "height": 5472,
                    "url": "https://www.pexels.com/photo/amazed-boy-wearing-magician-cape-looking-through-kaleidoscope-tube-7139794/",
                    "photographer": "Monstera Production",
                    "photographer_url": "https://www.pexels.com/@gabby-k",
                    "photographer_id": 3372733,
                    "avg_color": "#7C7E7D",
                    "src": {
                        "original": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg",
                        "large2x": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/7139794/pexels-photo-7139794.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Surprised boy wearing masquerade costume of magician looking through kaleidoscope tube while standing against gray background"
                },
                {
                    "id": 12756544,
                    "width": 2185,
                    "height": 3884,
                    "url": "https://www.pexels.com/photo/portrait-of-lion-12756544/",
                    "photographer": "Fatih Turan",
                    "photographer_url": "https://www.pexels.com/@fatih-turan-63325184",
                    "photographer_id": 63325184,
                    "avg_color": "#7D5A3E",
                    "src": {
                        "original": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg",
                        "large2x": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/12756544/pexels-photo-12756544.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Portrait of Lion"
                },
                {
                    "id": 46795,
                    "width": 3888,
                    "height": 2592,
                    "url": "https://www.pexels.com/photo/lion-standing-on-brown-bushes-46795/",
                    "photographer": "Pixabay",
                    "photographer_url": "https://www.pexels.com/@pixabay",
                    "photographer_id": 2659,
                    "avg_color": "#8A7958",
                    "src": {
                        "original": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg",
                        "large2x": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/46795/lion-big-cat-predator-safari-46795.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Lion Standing on Brown Bushes"
                },
                {
                    "id": 2574476,
                    "width": 6000,
                    "height": 4000,
                    "url": "https://www.pexels.com/photo/statue-room-2574476/",
                    "photographer": "Shvets Anna",
                    "photographer_url": "https://www.pexels.com/@shvets",
                    "photographer_id": 1233920,
                    "avg_color": "#99A3A1",
                    "src": {
                        "original": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg",
                        "large2x": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/2574476/pexels-photo-2574476.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Statue Room"
                }
            ],
            "total_results": 3232,
            "next_page": "https://api.pexels.com/v1/search/?page=3&per_page=15&query=Cape+Lion",
            "prev_page": "https://api.pexels.com/v1/search/?page=1&per_page=15&query=Cape+Lion"
        }
        """
        
        return jsonString.toJsonData()
    }
    
}
