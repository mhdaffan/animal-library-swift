//
//  AnimalResponseMock.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 17/01/24.
//

@testable import AnimalLibrary
import Foundation

extension AnimalResponse {
    
    static func stub200() -> [AnimalResponse] {
        return mock200().toObject([AnimalResponse].self)!
    }
    
    static func mock200() -> Data {
        let jsonString = """
        [
            {
                "name": "Cape Lion",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Carnivora",
                    "family": "Felidae",
                    "genus": "Panthera",
                    "scientific_name": "Panthera leo melanochaitus"
                },
                "locations": [
                    "Africa"
                ],
                "characteristics": {
                    "prey": "Wildebeests, antelopes, zebras, buffalos, rodents, and more",
                    "name_of_young": "cub",
                    "group_behavior": "Pride",
                    "biggest_threat": "Habitat loss and hunting",
                    "most_distinctive_feature": "The male’s dark-colored mane",
                    "gestation_period": "around 100 days",
                    "litter_size": "1-6 cubs",
                    "habitat": "plains",
                    "diet": "Carnivore",
                    "type": "mammal",
                    "common_name": "Cape Lion",
                    "origin": "South Africa",
                    "number_of_species": "1",
                    "location": "South Africa",
                    "color": "BrownYellowWhiteOrange",
                    "skin_type": "Hair",
                    "top_speed": "48 mph",
                    "lifespan": "25 years",
                    "weight": "up to 600 pounds",
                    "height": "4 feet",
                    "length": "6-7 feet",
                    "age_of_sexual_maturity": "3-4 years",
                    "age_of_weaning": "6-7 months"
                }
            },
            {
                "name": "Golden Lion Tamarin",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Primates",
                    "family": "Callitrichidae",
                    "genus": "Leontopithecus",
                    "scientific_name": "Leontopithecus rosalia"
                },
                "locations": [
                    "South-America"
                ],
                "characteristics": {
                    "main_prey": "Fruit, Insects, Small Mammals, Small Reptiles",
                    "habitat": "Lowland tropical forest",
                    "predators": "Hawks, Wild Cats, Snakes, Rats",
                    "diet": "Omnivore",
                    "average_litter_size": "2",
                    "lifestyle": "Troop",
                    "favorite_food": "Fruit",
                    "type": "Mammal",
                    "slogan": "Native to the eastern rainforests of Brazil!",
                    "color": "BrownBlackGoldOrange",
                    "skin_type": "Hair",
                    "top_speed": "24 mph",
                    "lifespan": "8-15 years",
                    "weight": "550-700g (19-25oz)"
                }
            },
            {
                "name": "Lion",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Carnivora",
                    "family": "Felidae",
                    "genus": "Panthera",
                    "scientific_name": "Panthera leo"
                },
                "locations": [
                    "Africa",
                    "Asia"
                ],
                "characteristics": {
                    "prey": "Antelope, Warthog, Zebra",
                    "name_of_young": "Cub",
                    "group_behavior": "Pride",
                    "estimated_population_size": "23,000",
                    "biggest_threat": "Habitat loss",
                    "most_distinctive_feature": "Long and thick hairy mane of the male around the face",
                    "other_name(s)": "African Lion",
                    "gestation_period": "110 days",
                    "habitat": "open woodland, scrub, grassland",
                    "diet": "Carnivore",
                    "average_litter_size": "3",
                    "lifestyle": "Diurnal/Nocturnal",
                    "common_name": "Lion",
                    "number_of_species": "2",
                    "location": "sub-Saharan Africa",
                    "slogan": "Lives in small groups called prides!",
                    "group": "Mammal",
                    "color": "BrownGoldTawnyBlonde",
                    "skin_type": "Fur",
                    "top_speed": "35 mph",
                    "lifespan": "8 - 15 years",
                    "weight": "120kg - 249kg (264lbs - 550lbs)",
                    "length": "1.4m - 2.5m (4.7ft - 8.2ft)",
                    "age_of_sexual_maturity": "2 - 3 years",
                    "age_of_weaning": "6 months"
                }
            },
            {
                "name": "Lion’s Mane Jellyfish",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Cnidaria",
                    "class": "Scyphozoa",
                    "order": "Semaeostomeae",
                    "family": "Cyaneidae",
                    "genus": "Cyanea",
                    "scientific_name": "Cyanea capillata"
                },
                "locations": [
                    "Ocean"
                ],
                "characteristics": {
                    "prey": "Fish, zooplankton, shrimp, other jellyfish",
                    "group_behavior": "Solitary/School",
                    "estimated_population_size": "Possibly millions its IUCN conservation status is unevaluated, but not in danger of extinction",
                    "biggest_threat": "Pollution",
                    "most_distinctive_feature": "Its size",
                    "other_name(s)": "Giant jellyfish, hair jellyfish, hair jellyfish, mane jellyfish, Arctic red jellyfish, sea nettle, sea blubber, winter jellyfish",
                    "gestation_period": "One day",
                    "water_type": "Salt",
                    "optimum_ph_level": "8.1",
                    "habitat": "Cooler ocean waters",
                    "predators": "Seabirds, sea turtles, anemones, ocean sunfish, larger jellies but only when the jellyfish is a juvenile.",
                    "diet": "Carnivore",
                    "type": "Cnidarian",
                    "common_name": "Lion’s Mane Jellyfish",
                    "number_of_species": "1",
                    "color": "YellowRedWhiteOrangePurple",
                    "lifespan": "One year",
                    "weight": "200 pounds",
                    "length": "As much as 120 feet"
                }
            },
            {
                "name": "Lionfish",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Actinopterygii",
                    "order": "Scorpaeniformes",
                    "family": "Scorpaenidae",
                    "genus": "Pterois",
                    "scientific_name": "Pterois volitans"
                },
                "locations": [
                    "Ocean"
                ],
                "characteristics": {
                    "main_prey": "Fish, Shrimp, Crabs",
                    "distinctive_feature": "Striped body markings with long spines",
                    "water_type": "Salt",
                    "optimum_ph_level": "8.1 - 8.4",
                    "habitat": "Tropical reefs and rocky crevices",
                    "predators": "Eels, Frogfish, Scorpion Fish",
                    "diet": "Carnivore",
                    "favorite_food": "Fish",
                    "common_name": "Lionfish",
                    "average_clutch_size": "8000",
                    "slogan": "Females can release up to 15,000 eggs at a time!",
                    "color": "BrownRedBlackWhiteOrange",
                    "skin_type": "Scales",
                    "lifespan": "10 - 18 years",
                    "length": "30cm - 35cm (12in - 14in)"
                }
            },
            {
                "name": "Mountain Lion",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Carnivora",
                    "family": "Felidae",
                    "genus": "Puma",
                    "scientific_name": "Felis Concolor"
                },
                "locations": [
                    "Central-America",
                    "North-America",
                    "South-America"
                ],
                "characteristics": {
                    "main_prey": "Deer, Elk, Beavers",
                    "litter_size": "3",
                    "habitat": "Forest and mountainous regions",
                    "predators": "Human, Grizzly Bear",
                    "diet": "Carnivore",
                    "lifestyle": "Solitary",
                    "favorite_food": "Deer",
                    "type": "Mammal",
                    "origin": "3",
                    "slogan": "Has no real natural predators!",
                    "color": "BrownBlackTan",
                    "skin_type": "Fur",
                    "top_speed": "30 mph",
                    "lifespan": "10-20 years",
                    "weight": "29-90kg (64-198lbs)"
                }
            },
            {
                "name": "Sea Lion",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Carnivora",
                    "family": "Otariidae",
                    "scientific_name": "Otariidae"
                },
                "locations": [
                    "Ocean"
                ],
                "characteristics": {
                    "main_prey": "Fish, Crabs, Squid",
                    "habitat": "Coastal waters and rocky shorelines",
                    "predators": "Human, Sharks, Killer Whale",
                    "diet": "Omnivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Fish",
                    "type": "Mammal",
                    "slogan": "It's flippers allow it to walk on the land",
                    "color": "BrownGreyTan",
                    "skin_type": "Fur",
                    "top_speed": "27 mph",
                    "lifespan": "15-22 years",
                    "weight": "300-1,000kg (660-2,200lbs)"
                }
            },
            {
                "name": "African Bush Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Loxodonta",
                    "scientific_name": "Loxodonta africana africana"
                },
                "locations": [
                    "Africa"
                ],
                "characteristics": {
                    "prey": "Grass, Fruit, Roots",
                    "name_of_young": "Calf",
                    "group_behavior": "Herd",
                    "estimated_population_size": "300,000",
                    "biggest_threat": "Poaching and habitat loss",
                    "most_distinctive_feature": "Large, rounded ears",
                    "other_name(s)": "African Elephant",
                    "gestation_period": "20 - 24 months",
                    "habitat": "Forest, savannah and flood plains",
                    "predators": "Human, Lion, Hyena",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Diurnal",
                    "common_name": "African Bush Elephant",
                    "number_of_species": "1",
                    "location": "central and southern Africa",
                    "slogan": "Can drink up to 50 gallons a day",
                    "group": "Mammal",
                    "color": "BrownGrey",
                    "skin_type": "Leather",
                    "top_speed": "25 mph",
                    "lifespan": "60 - 70 years",
                    "weight": "3,600kg - 5,400kg (7,900lbs - 12,000lbs)",
                    "height": "3m - 3.5m (10ft - 12ft)",
                    "age_of_sexual_maturity": "11 - 20 years",
                    "age_of_weaning": "6 - 18 months"
                }
            },
            {
                "name": "African Forest Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Loxodonta",
                    "scientific_name": "Loxodonta cyclotis"
                },
                "locations": [
                    "Africa"
                ],
                "characteristics": {
                    "prey": "Grass, Fruit, Roots",
                    "name_of_young": "Calf",
                    "group_behavior": "Herd",
                    "estimated_population_size": "200,000",
                    "biggest_threat": "Poaching and habitat loss",
                    "most_distinctive_feature": "Rounded ears and thin, straight tusks",
                    "other_name(s)": "African Elephant",
                    "gestation_period": "22 - 24 months",
                    "habitat": "Forest, savannah and flood plains",
                    "predators": "Human, Lion, Hyena",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Diurnal",
                    "common_name": "African Forest Elephant",
                    "number_of_species": "1",
                    "location": "central and southern Africa",
                    "slogan": "Have large rounded ears to help keep them cool!",
                    "group": "Mammal",
                    "color": "BrownGrey",
                    "skin_type": "Leather",
                    "top_speed": "24 mph",
                    "lifespan": "60 - 70 years",
                    "weight": "900kg - 3,000kg (1,984lbs - 6,613lbs)",
                    "height": "2m - 3m (6.6ft - 9.8ft)",
                    "age_of_sexual_maturity": "11 - 20 years",
                    "age_of_weaning": "5 years"
                }
            },
            {
                "name": "Asian Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Elephas",
                    "scientific_name": "Elephas maximus"
                },
                "locations": [
                    "Asia"
                ],
                "characteristics": {
                    "main_prey": "Grass, Fruit, Roots",
                    "distinctive_feature": "Long trunk and large feet",
                    "habitat": "Rainforest and tropical woodland",
                    "predators": "Human, Tiger",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Grass",
                    "type": "Mammal",
                    "slogan": "Domesticated for hundreds of years!",
                    "color": "BrownGreyBlack",
                    "skin_type": "Leather",
                    "top_speed": "27 mph",
                    "lifespan": "55 - 70 years",
                    "weight": "3,000kg - 5,000kg (6,500lbs - 11,000lbs)",
                    "height": "2m - 3m (7ft - 10ft)"
                }
            },
            {
                "name": "Borneo Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Elephas",
                    "scientific_name": "Elephas maximus borneensis"
                },
                "locations": [
                    "Asia",
                    "Ocean"
                ],
                "characteristics": {
                    "main_prey": "Grass, Fruit, Roots",
                    "distinctive_feature": "Long trunk and large feet",
                    "habitat": "Rainforest and tropical woodland",
                    "predators": "Human, Tiger",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Grass",
                    "type": "Mammal",
                    "slogan": "The smallest species of elephant!",
                    "color": "BrownGreyBlack",
                    "skin_type": "Leather",
                    "top_speed": "27 mph",
                    "lifespan": "55 - 70 years",
                    "weight": "3,000kg - 5,000kg (6,500lbs - 11,000lbs)",
                    "height": "2m - 3m (7ft - 10ft)"
                }
            },
            {
                "name": "Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae"
                },
                "locations": [
                    "Africa",
                    "Asia"
                ],
                "characteristics": {
                    "main_prey": "Grass, Fruit, Roots",
                    "distinctive_feature": "Large body size and long trunk",
                    "habitat": "Rainforest and flood plains",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Grass",
                    "type": "Mammal",
                    "slogan": "Spends around 22 hours a day eating!",
                    "color": "Grey",
                    "skin_type": "Leather",
                    "top_speed": "25 mph",
                    "lifespan": "55 - 70 years",
                    "weight": "3,000kg - 5,400kg (6,500lbs - 12,000lbs)",
                    "height": "2m - 3.6m (7ft - 12ft)"
                }
            },
            {
                "name": "Elephant Seal",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Carnivora",
                    "family": "Phocidae",
                    "genus": "Mirounga",
                    "scientific_name": "Mirounga"
                },
                "locations": [
                    "Ocean"
                ],
                "characteristics": {
                    "main_prey": "Fish, Squid, Octopus",
                    "distinctive_feature": "Long trunk-like nose and large body",
                    "habitat": "Warm coastal waters close to land",
                    "predators": "Human, Sharks, Killer Whales",
                    "diet": "Carnivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Fish",
                    "type": "Mammal",
                    "slogan": "The largest species of seal in the world!",
                    "color": "BrownGreyBlackTan",
                    "skin_type": "Fur",
                    "top_speed": "12 mph",
                    "lifespan": "18 - 22 years",
                    "weight": "900kg - 3,000kg (2,000lbs - 6,000lbs)",
                    "length": "3m - 5m (10ft - 16ft)"
                }
            },
            {
                "name": "Elephant Shrew",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Macroscelidea",
                    "family": "Macroscelididae",
                    "genus": "Elephantulus",
                    "scientific_name": "Elephantulus"
                },
                "locations": [
                    "Africa"
                ],
                "characteristics": {
                    "main_prey": "Insects, Worms, Spiders",
                    "distinctive_feature": "Long nose and long back legs",
                    "habitat": "Forest, woodland and grassland",
                    "predators": "Snakes, Lizards, Birds of Prey",
                    "diet": "Omnivore",
                    "average_litter_size": "2",
                    "lifestyle": "Solitary",
                    "favorite_food": "Insects",
                    "type": "Mammal",
                    "slogan": "Found exclusively on the African continent!",
                    "color": "BrownGreyBlackWhiteTan",
                    "skin_type": "Fur",
                    "top_speed": "8 mph",
                    "lifespan": "2 - 5 years",
                    "weight": "50g - 500g (2oz - 18oz)",
                    "length": "10cm - 30cm (4in - 12in)"
                }
            },
            {
                "name": "Indian Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Elephas",
                    "scientific_name": "Elephas maximus indicus"
                },
                "locations": [
                    "Asia"
                ],
                "characteristics": {
                    "main_prey": "Grass, Fruit, Roots",
                    "distinctive_feature": "Long trunk and large feet",
                    "habitat": "Rainforest and tropical woodland",
                    "predators": "Human, Tiger",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Grass",
                    "type": "Mammal",
                    "slogan": "Found throughout south-east Asia!",
                    "color": "BrownGreyBlack",
                    "skin_type": "Leather",
                    "top_speed": "27 mph",
                    "lifespan": "55 - 70 years",
                    "weight": "3,000kg - 5,000kg (6,500lbs - 11,000lbs)",
                    "height": "2m - 3m (7ft - 10ft)"
                }
            },
            {
                "name": "Sri Lankan Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Elephas",
                    "scientific_name": "Elephas Maximus Maximus"
                },
                "locations": [
                    "Asia"
                ],
                "characteristics": {
                    "main_prey": "Grass, Fruit, Roots",
                    "distinctive_feature": "Long trunk and large feet",
                    "habitat": "Rainforest and tropical woodland",
                    "predators": "Human, Tiger",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Grass",
                    "type": "Mammal",
                    "slogan": "Now restricted to a few parks!",
                    "color": "BrownGreyBlack",
                    "skin_type": "Leather",
                    "top_speed": "27 mph",
                    "lifespan": "55 - 70 years",
                    "weight": "3,000kg - 5,000kg (6,500lbs - 11,000lbs)",
                    "height": "2m - 3m (7ft - 10ft)"
                }
            },
            {
                "name": "Sumatran Elephant",
                "taxonomy": {
                    "kingdom": "Animalia",
                    "phylum": "Chordata",
                    "class": "Mammalia",
                    "order": "Proboscidea",
                    "family": "Elephantidae",
                    "genus": "Elephas",
                    "scientific_name": "Elephas Maximus Sumatranus"
                },
                "locations": [
                    "Asia"
                ],
                "characteristics": {
                    "main_prey": "Grass, Fruit, Roots",
                    "distinctive_feature": "Long trunk and large feet",
                    "habitat": "Rainforest and tropical woodland",
                    "predators": "Human, Tiger",
                    "diet": "Herbivore",
                    "average_litter_size": "1",
                    "lifestyle": "Herd",
                    "favorite_food": "Grass",
                    "type": "Mammal",
                    "slogan": "Less than 2,000 left in the wild!",
                    "color": "BrownGreyBlack",
                    "skin_type": "Leather",
                    "top_speed": "27 mph",
                    "lifespan": "55 - 70 years",
                    "weight": "3,000kg - 5,000kg (6,500lbs - 11,000lbs)",
                    "height": "2m - 3m (7ft - 10ft)"
                }
            }
        ]
        """
        return jsonString.toJsonData()
    }
    
}
