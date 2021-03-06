# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mode.destroy_all
Book.destroy_all
Chapter.destroy_all
Profile.destroy_all
Observation.destroy_all
Page.destroy_all
Place.destroy_all

pages = Page.create([
  {id: 1, number: 2, created_at: Time.now, updated_at: Time.now},
  {id: 2, number: 3, created_at: Time.now, updated_at: Time.now}
  ])

text_one = "It was not in the long walks through jostling crowds at night that he was less alone, or in the training camp at Allentown, or in the day on the docks at Seattle, or in the empty reek of Washington City hot boyhood summer nights, or in the meal on Market Street, or in the swim off the red rocks at San Diego, or in the bed full of fleas in New Orleans, or in the cold razorwind off the lake, or in the gray faces trempling in the grind of gears in the street under Michigan Avenue, or in the smokers of limited expresstrains, or walking across country, or riding up the dry mountain canyons, or the night without a sleepingbag among frozen beartracks in the Yellowstone, or canoeing Sundays on the Quinnipiac;"

places = Place.create([
  {id: 1, name: "Allentown", latitude: -75.477222, longitude: 40.601667, created_at: Time.now, updated_at: Time.now},
  {id: 2, name: "Seattle", latitude: -122.333056, longitude: 47.609722, created_at: Time.now, updated_at: Time.now},
  {id: 3, name: "Washington, D. C.", variants: "Washington City", latitude: -77.036667, longitude: 38.895111, created_at: Time.now, updated_at: Time.now},
  {id: 4, name: "Market Street", latitude: nil, longitude: nil, created_at: Time.now, updated_at: Time.now, geocoding_notes: "Possibly San Francisco. Other options: Philadelphia, St. Louis"},
  {id: 5, name: "New Orleans", latitude: -90.05, longitude: 29.966667, created_at: Time.now, updated_at: Time.now},
  {id: 6, name: "Michigan Avenue", variants: "", latitude: -87.62416, longitude: 41.89669, created_at: Time.now, updated_at: Time.now, zoom: 5},
  {id: 7, name: "Yellowstone National Park", variants: "Yellowstone", latitude: -110.5, longitude: 44.6, created_at: Time.now, updated_at: Time.now, zoom: 8},
  {id: 8, name: "San Diego", latitude: -117.1625, longitude: 32.715, created_at: Time.now, updated_at: Time.now},
  {id: 9, name: "Quinnipiac River", variants: "Quinnipiac", latitude: -72.902, longitude: 41.3, created_at: Time.now, updated_at: Time.now, zoom: 5},
  {id: 10, name: "U.S.A.", variants: "U. S. A.", latitude: -98.579500, longitude: 39.828175, created_at: Time.now, updated_at: Time.now, zoom: 8},
  {id: 11, name: "Arlington Cemetery", latitude: -77.07, longitude: 38.88, created_at: Time.now, updated_at: Time.now, zoom: 8}
  ])

observations = Observation.create([
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 1,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Allentown",
    order_in_page: 1
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 2,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Seattle",
    order_in_page: 2
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 3,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Washington City",
    order_in_page: 3
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 4,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Market Street",
    order_in_page: 4
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 8,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "San Diego",
    order_in_page: 5
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 5,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "New Orleans",
    order_in_page: 6
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 6,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Michigan Avenue",
    order_in_page: 7
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 7,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Yellowstone",
    order_in_page: 8
  },
  {
    text: text_one,
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 9,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Quinnipiac",
    order_in_page: 9
  },
  {
    text: "it was speech that clung to the ears, the link that tingled in the blood; U. S. A.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 10
  },
  {
    text: "U. S. A. is the slice of a continent.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 11
  },
  {
    text: "U. S. A. is a group of holding companies, some aggregations of trade unions, a set of laws bound in calf, a radio network, a chain of moving picture theatres, a column of stockquotations rubbed out and written in by a Western Union boy on a blackboard, a publiclibrary full of old newspapers and dogeared history books with protests scrawled on the margins in pencil.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 12
  },
  {
    text: "U. S. A. is the world's greatest rivervalley fringed with mountains and hills, U. S. A. is a set of bigmouthed officials with too many bankaccounts.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 1,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 13
  },
  {
    text: "U. S. A. is the world's greatest rivervalley fringed with mountains and hills, ~~U. S. A. is a set of bigmouthed officials with too many bankaccounts.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 2,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 1
  },
  {
    text: "U. S. A. is a lot of men buried in their uniforms in Arlington Cemetery.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 2,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 2
  },
  {
    text: "U. S. A. is a lot of men buried in their uniforms in Arlington Cemetery.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 11,
    page_id: 2,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "Arlington Cemetery",
    order_in_page: 3
  },
  {
    text: "U. S. A. is the letters at the end of an address when you are away from home.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 2,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 4
  },
  {
    text: "But mostly U. S. A. is the speech of the people.",
    created_at: Time.now,
    updated_at: Time.now,
    place_id: 10,
    page_id: 2,
    mode_id: 4,
    chapter_id: 1,
    place_name_in_text: "U. S. A.",
    order_in_page: 5
  }
  ])

modes = Mode.create([
  {name: 'Newsreel', id: 1},
  {name: 'Narrative', id: 2},
  {name: 'Camera Eye', id: 3},
  {name: 'Profile', id: 4}
  ])

books = Book.create([
  {id: 1, name: "“U. S. A.”", first_page: 1, last_page: 3},
  {id: 2, name: "*The 42nd Parallel*", first_page: 11, last_page: 356},
  {id: 3, name: "*1919*", first_page: 363, last_page: 761},
  {id: 4, name: "*The Big Money*", first_page: 769, last_page: 1240}
  ])

chapters = Chapter.create([
  {id: 1, name: "U. S. A.", first_page: 1, last_page: 3, mode_id: 4},
  {id: 2, name: "Newsreel I", subhead: "*It was that emancipated race*", first_page: 11, last_page: 13},
  {id: 3, name: "The Camera Eye (1)", subhead: "when you walk along the street you have to step carefully always", first_page: 13, last_page: 14},
  {id: 4, name: "Mac", first_page: 14, last_page: 19},
  {id: 5, name: "The Camera Eye (2)", subhead: "we hurry wallowing like in a boat", first_page: 19, last_page: 20},
  {id: 6, name: "Mac", first_page: 20, last_page: 28},
  {id: 7, name: "Newsreel II", subhead: "*Come on and hear*", first_page: 28, last_page: 29},
  {id: 8, name: "The Camera Eye (3)", subhead: "O qu’il a des beaux yeux said the lady", first_page: 29, last_page: 30},
  {id: 9, name: "Lover of Mankind", first_page: 30, last_page: 32, mode_id: 4},
  {id: 10, name: "The Camera Eye (4)", subhead: "riding backwards through the rain", first_page: 32, last_page: 33},
  {id: 11, name: "Mac", first_page: 33, last_page: 54},
  {id: 12, name: "Newsreel III", subhead: "“It takes nerve to live in this world”", first_page: 54, last_page: 55},
  {id: 13, name: "The Camera Eye (5)", subhead: "and we played the battle of Port Arthur", first_page: 55, last_page: 56},
  {id: 14, name: "Newsreel IV", subhead: "*I met my love in the Alamo*", first_page: 56, last_page: 57},
  {id: 15, name: "The Camera Eye (6)", subhead: "Go it go it said Mr. Linwood", first_page: 57, last_page: 57},
  {id: 16, name: "Newsreel V", subhead: "BUGS DRIVE OUT BIOLOGIST", first_page: 58, last_page: 58},
  {id: 17, name: "Mac", first_page: 58, last_page: 76},
  {id: 18, name: "Newsreel VI", subhead: "Paris Shocked At Last", first_page: 76, last_page: 77},
  {id: 19, name: "The Camera Eye (7)", subhead: "skating on the pond next the silver company's mills", first_page: 77, last_page: 77},
  {id: 20, name: "The Plant Wizard", first_page: 77, last_page: 79, mode_id: 4},
  {id: 21, name: "Newsreel VII", subhead: "SAYS THIS IS CENTURY WHERE BILLIONS AND BRAINS ARE TO RULE", first_page: 79, last_page: 80},
  {id: 22, name: "The Camera Eye (8)", subhead: "you sat on the bed unlacing your shoes", first_page: 80, last_page: 81},
  {id: 23, name: "Mac", first_page: 81, last_page: 86},
  {id: 24, name: "The Camera Eye (9)", subhead: "all day the fertilizer-factories smelt something awful", first_page: 86, last_page: 87},
  {id: 25, name: "Big Bill", first_page: 87, last_page: 89, mode_id: 4},
  {id: 26, name: "The Camera Eye (10)", subhead: "the old major who used to take me to the Capitol", first_page: 90, last_page: 91},
  {id: 27, name: "Mac", first_page: 91, last_page: 99},
  {id: 28, name: "Newsreel VIII", subhead: "Prof Ferrer, former director of the Modern School", first_page: 99, last_page:99},
  {id: 29, name: "The Camera Eye (11)", subhead: "the Pennypackers went to the Presbyterian church", first_page: 99, last_page: 101},
  {id: 30, name: "Newsreel IX", subhead: "FORFEIT STARS BY DRINKING", first_page: 101, last_page: 102},
  {id: 31, name: "Mac", first_page: 102, last_page: 117},
  {id: 32, name: "The Camera Eye (12)", subhead: "when everybody went away for a trip", first_page: 117, last_page: 118},
  {id: 33, name: "Newsreel X", subhead: "MOON’S PATENT IS FIZZLE", first_page: 119, last_page: 119},
  {id: 34, name: "The Camera Eye (13)", subhead: "he was a towboat captain and he knew the river", first_page: 120, last_page: 121},
  {id: 35, name: "Janey", first_page: 121, last_page: 133},
  {id: 36, name: "The Camera Eye (14)", subhead: "Sunday nights when we had fishballs and baked beans", first_page: 133, last_page: 134},
  {id: 37, name: "Newsreel XI", subhead: "the government of the United States must insist", first_page: 134, last_page: 135},
  {id: 38, name: "Janey", first_page: 135, last_page: 148},
  {id: 39, name: "The Camera Eye (15)", subhead: "in the mouth of the Schuylkill", first_page: 149, last_page: 150},
  {id: 40, name: "Newsreel XII", subhead: "Greeks in battle flee before cops", first_page: 150, last_page: 151},
  {id: 41, name: "The Boy Orator of the Platte", first_page: 151, last_page: 154, mode_id: 4},
  {id: 42, name: "The Camera Eye (16)", subhead: "it was hot as a bakeoven going through the canal", first_page: 154, last_page: 155},
  {id: 43, name: "J. Ward Moorehouse", first_page: 155, last_page: 182},
  {id: 44, name: "The Camera Eye (17)", subhead: "the spring you could see Halley’s Comet", first_page: 182, last_page: 183},
  {id: 45, name: "Newsreel XIII", subhead: "I was in front of the national palace", first_page: 183, last_page: 184},
  {id: 46, name: "Eleanor Stoddard", first_page: 184, last_page: 196},
  {id: 47, name: "The Camera Eye (18)", subhead: "she was a very fashionable lady", first_page: 196, last_page: 197},
  {id: 48, name: "Eleanor Stoddard", first_page: 197, last_page: 208},
  {id: 49, name: "The Camera Eye (19)", subhead: "the methodist minister’s wife was a tall thin woman", first_page: 209, last_page: 209},
  {id: 50, name: "Newsreel XIV", subhead: "BOMBARDIER STOPS AUSTRALIAN", first_page: 210, last_page: 211},
  {id: 51, name: "Emperor of the Caribbean", first_page: 211, last_page: 214, mode_id: 4},
  {id: 52, name: "The Camera Eye (20)", subhead: "when the streetcarmen went out on strike", first_page: 214, last_page: 215},
  {id: 53, name: "J. Ward Moorehouse", first_page: 215, last_page: 226},
  {id: 54, name: "The Camera Eye (21)", subhead: "that August it never rained a drop", first_page: 227, last_page: 229},
  {id: 55, name: "Newsreel XV", subhead: "lights go out as *Home Sweet Home*", first_page: 229, last_page: 230},
  {id: 56, name: "Prince of Peace", first_page: 230, last_page: 231, mode_id: 4},
  {id: 57, name: "The Camera Eye (22)", subhead: "all week the fog clung to the sea", first_page: 231, last_page: 232},
  {id: 58, name: "J. Ward Moorehouse", first_page: 233, last_page: 239},
  {id: 59, name: "Newsreel XVI", subhead: "the Philadelphian had completed the thirteenth lap", first_page: 239, last_page: 240},
  {id: 60, name: "The Camera Eye (23)", subhead: "this friend of mother’s was a very lovely", first_page: 240, last_page: 241},
  {id: 61, name: "Eleanor Stoddard", first_page: 241, last_page: 246},
  {id: 62, name: "The Camera Eye (24)", subhead: "raining in historic Quebec    it was raining", first_page: 246, last_page: 248},
  {id: 63, name: "Janey", first_page: 248, last_page: 258},
  {id: 64, name: "The Electrical Wizard", first_page: 258, last_page: 262, mode_id: 4},
  {id: 65, name: "The Camera Eye (25)", subhead: "those spring nights the streetcarwheels screech", first_page: 262, last_page: 263},
  {id: 66, name: "Newsreel XVII", subhead: "an attack by a number of hostile airships", first_page: 263, last_page: 264},
  {id: 67, name: "Mac", first_page: 264, last_page: 282},
  {id: 68, name: "Proteus", first_page: 282, last_page: 284, mode_id: 4},
  {id: 69, name: "Janey", first_page: 284, last_page: 301},
  {id: 70, name: "The Camera Eye (26)", subhead: "the garden was crowded and outside", first_page: 301, last_page: 302},
  {id: 71, name: "Newsreel XVIII", subhead: "*Goodby Piccadilly, farewell Leicester Square*", first_page: 303, last_page: 303},
  {id: 72, name: "Eleanor Stoddard", first_page: 304, last_page: 312},
  {id: 73, name: "Newsreel XIX", subhead: "U. S. AT WAR", first_page: 312, last_page: 313},
  {id: 74, name: "The Camera Eye (27)", subhead: "there were priests and nuns on the *Espagne*", first_page: 313, last_page: 315},
  {id: 75, name: "Fighting Bob", first_page: 315, last_page: 318, mode_id: 4},
  {id: 76, name: "Charley Anderson", first_page: 318, last_page: 356},
  {id: 77, name: "Newsreel XX", subhead: "*Oh the infantree the infantree*", first_page: 363, last_page: 364},
  {id: 78, name: "Joe Williams", first_page: 364, last_page: 368},
  {id: 79, name: "The Camera Eye (28)", subhead: "when the telegram came that she was dying", first_page: 368, last_page: 370},
  {id: 80, name: "Playboy", first_page: 371, last_page: 375, mode_id: 4},
  {id: 81, name: "Joe Williams", first_page: 375, last_page: 419},
  {id: 82, name: "Newsreel XXI", subhead: "*Goodby Broadway; Hello France", first_page: 419, last_page: 420},
  {id: 83, name: "The Camera Eye (29)", subhead: "the raindrops fall one by one out of the horsechestnut tree", first_page: 420, last_page: 421},
  {id: 84, name: "Richard Ellsworth Savage", first_page: 421, last_page: 444},
  {id: 85, name: "Newsreel XXII", subhead: "*Coming Year Promises Rebirth of Railroads*", first_page: 445, last_page: 446},
  {id: 86, name: "The Camera Eye (30)", subhead: "remembering the grey crooked fingers", first_page: 446, last_page: 447},
  {id: 87, name: "Randolph Bourne", first_page: 447, last_page: 449, mode_id: 4},
  {id: 88, name: "Newsreel XXIII", subhead: "*If you dont like your Uncle Sammy*", first_page: 450, last_page: 450},
  {id: 89, name: "Eveline Hutchins", first_page: 451, last_page: 467},
  {id: 90, name: "The Camera Eye (31)", subhead: "a mattress covered with something from Vantine's", first_page: 467, last_page: 468},
  {id: 91, name: "Eveline Hutchins", first_page: 469, last_page: 477},
  {id: 92, name: "Newsreel XXIV", subhead: "it is difficult to realize the colossal scale", first_page: 478, last_page: 479},
  {id: 93, name: "The Camera Eye (32)", subhead: "à quatorze heures precisement", first_page: 479, last_page: 480},
  {id: 94, name: "The Happy Warrior", first_page: 480, last_page: 485, mode_id: 4},
  {id: 95, name: "The Camera Eye (33)", subhead: "11,000 registered harlots", first_page: 485, last_page: 488},
  {id: 96, name: "Joe Williams", first_page: 488, last_page: 507},
  {id: 97, name: "The Camera Eye (34)", subhead: "his voice was three thousand miles away", first_page: 507, last_page: 509},
  {id: 98, name: "Newsreel XXV", subhead: "General Pershing’s forces today occupied", first_page: 509, last_page: 510},
  {id: 99, name: "A Hoosier Quixote", first_page: 511, last_page: 515, mode_id: 4},
  {id: 100, name: "Newsreel XXVI", subhead: "Europe on Knife Edge", first_page: 516, last_page: 517},
  {id: 101, name: "Richard Ellsworth Savage", first_page: 517, last_page: 540},
  {id: 102, name: "Newsreel XXVII", subhead: "Her Wounded Hero of War a Fraud", first_page: 540, last_page: 542},
  {id: 103, name: "The Camera Eye (35)", subhead: "there were always two cats", first_page: 542, last_page: 543},
  {id: 104, name: "Eveline Hutchins", first_page: 543, last_page: 553},
  {id: 105, name: "Newsreel XXVIII", subhead: "*Oh the eagles they fly high*", first_page: 553, last_page: 555},
  {id: 106, name: "Joe Williams", first_page: 555, last_page: 561},
  {id: 107, name: "Newsreel XXIX", subhead: "the arrival of the news", first_page: 562, last_page: 563},
  {id: 108, name: "The Camera Eye (36)", subhead: "when we empited the rosies", first_page: 563, last_page: 564},
  {id: 109, name: "Meester Veelson", first_page: 564, last_page: 571, mode_id: 4},
  {id: 110, name: "Newsreel XXX", subhead: "Monster Guns Removed?", first_page: 572, last_page: 573},
  {id: 111, name: "The Camera Eye (37)", subhead: "alphabetically according to rank", first_page: 573, last_page: 575},
  {id: 112, name: "Newsreel XXXI", subhead: "washing and dressing hastily", first_page: 576, last_page: 576},
  {id: 113, name: "Daughter", first_page: 576, last_page: 602},
  {id: 114, name: "Newsreel XXXII", subhead: "Golden Voice of Caruso Sings to Crowds in Streets", first_page: 602, last_page: 603},
  {id: 115, name: "The Camera Eye (38)", subhead: "sealed signed and delivered", first_page: 604, last_page: 605},
  {id: 116, name: "Newsreel XXXIII", subhead: "Can’t Recall Killing Sister", first_page: 605, last_page: 606},
  {id: 117, name: "Eveline Hutchins", first_page: 606, last_page: 642},
  {id: 118, name: "Newsreel XXXIV", subhead: "Whole World is Short of Platinum", first_page: 642, last_page: 643},
  {id: 119, name: "The House of Morgan", first_page: 644, last_page: 648, mode_id: 4},
  {id: 120, name: "Newsreel XXXV", subhead: "The Grand Prix de la Victoire", first_page: 648, last_page: 649},
  {id: 121, name: "The Camera Eye (39)", subhead: "daylight enlarges out of", first_page: 649, last_page: 651},
  {id: 122, name: "Newsreel XXXVI", subhead: "To the Glory of France Eternal", first_page: 651, last_page: 652},
  {id: 123, name: "Richard Ellsworth Savage", first_page: 653, last_page: 696},
  {id: 124, name: "Newsreel XXXVII", subhead: "Soviet Guards Displaced", first_page: 697, last_page: 698},
  {id: 125, name: "The Camera Eye (40)", subhead: "I walked all over town", first_page: 699, last_page: 700},
  {id: 126, name: "Newsreel XXXVIII", subhead: "*C’est la lutte finale*", first_page: 700, last_page: 701},
  {id: 127, name: "Daughter", first_page: 702, last_page: 713},
  {id: 128, name: "Newsreel XXXIX", subhead: "spectacle of ruined villages and tortured earth", first_page: 713, last_page: 714},
  {id: 129, name: "The Camera Eye (41)", subhead: "arent you coming to the anarchist picnic", first_page: 715, last_page: 716},
  {id: 130, name: "Newsreel XL", subhead: "Criminal in Pyjamas Saws Bars", first_page: 716, last_page: 717},
  {id: 131, name: "Joe Hill", first_page: 717, last_page: 718, mode_id: 4},
  {id: 132, name: "Ben Compton", first_page: 718, last_page: 742},
  {id: 133, name: "Newsreel XLI", subhead: "in British Colonial Office quarters", first_page: 743, last_page: 744},
  {id: 134, name: "The Camera Eye (42)", subhead: "four hours we casuals pile up scrapiron", first_page: 744, last_page: 745},
  {id: 135, name: "Newsreel XLII", subhead: "it was a gala day for Seattle", first_page: 745, last_page: 746},
  {id: 136, name: "Paul Bunyan", first_page: 746, last_page: 750, mode_id: 4},
  {id: 137, name: "Richard Ellsworth Savage", first_page: 750, last_page: 755},
  {id: 138, name: "Newsreel XLIII", subhead: "the placards borne by the radicals", first_page: 755, last_page: 756},
  {id: 139, name: "The Body of an American", first_page: 756, last_page: 761, mode_id: 4},
  {id: 140, name: "Charley Anderson", first_page: 769, last_page: 775},
  {id: 141, name: "Newsreel: XLIV", subhead: "*Yankee Doodle that melodee*", first_page: 775, last_page: 776},
  {id: 142, name: "Charley Anderson", first_page: 776, last_page: 782},
  {id: 143, name: "Newsreel XLV", subhead: "*’Twarn’t for powder and for storebought hair*", first_page: 782, last_page: 783},
  {id: 144, name: "The American Plan", first_page: 783, last_page: 787, mode_id: 4},
  {id: 145, name: "Newsreel XLVI", subhead: "these are the men for whom the rabid", first_page: 788, last_page: 788},
  {id: 146, name: "The Camera Eye (43)", subhead: "throat tightens when the restacked steamer", first_page: 788, last_page: 790},
  {id: 147, name: "Newsreel XLVII", subhead: "boy seeking future offered", first_page: 790, last_page: 791},
  {id: 148, name: "The Camera Eye (44)", subhead: "the unnamed arrival", first_page: 791, last_page: 793},
  {id: 149, name: "Charley Anderson", first_page: 793, last_page: 805},
  {id: 150, name: "Newsreel XLVIII", subhead: "truly the Steel Corporation", first_page: 805, last_page: 806},
  {id: 151, name: "Tin Lizzie", first_page: 806, last_page: 814, mode_id: 4},
  {id: 152, name: "Newsreel XLIX", subhead: "*Jack o’ Diamonds Jack o’ Diamonds*", first_page: 814, last_page: 815},
  {id: 153, name: "Charley Anderson", first_page: 815, last_page: 843},
  {id: 154, name: "Newsreel L", subhead: "*Don’t blame it all on Broadway*", first_page: 844, last_page: 845},
  {id: 155, name: "The Bitter Drink", first_page: 845, last_page: 855, mode_id: 4},
  {id: 156, name: "Newsreel LI", subhead: "*The sunshine drifted from our alley*", first_page: 855, last_page: 856},
  {id: 157, name: "Mary French", first_page: 856, last_page: 872},
  {id: 158, name: "The Camera Eye (45)", subhead: "the narrow yellow room teems with talk", first_page: 872, last_page: 873},
  {id: 159, name: "Mary French", first_page: 873, last_page: 892},
  {id: 160, name: "The Camera Eye (46)", subhead: "walk the streets and walk the streets", first_page: 892, last_page: 894},
  {id: 161, name: "Newsreel LII", subhead: "*assembled to a service for the dear departed*", first_page: 895, last_page: 895},
  {id: 162, name: "Art and Isadora", first_page: 896, last_page: 902, mode_id: 4},
  {id: 163, name: "Newsreel LIII", subhead: "*Bye bye blackbird*", first_page: 902, last_page: 903},
  {id: 164, name: "Margo Dowling", first_page: 903, last_page: 924},
  {id: 165, name: "Newsreel LIV", subhead: "there was nothing significant about the morning’s trading", first_page: 925, last_page: 925},
  {id: 166, name: "Adagio Dancer", first_page: 926, last_page: 930, mode_id: 4},
  {id: 167, name: "Newsreel LV", subhead: "THRONGS IN THE STREETS", first_page: 930, last_page: 930},
  {id: 168, name: "The Camera Eye (47)", subhead: "sirens bloom in the fog over the harbor", first_page: 931, last_page: 932},
  {id: 169, name: "Charley Anderson", first_page: 932, last_page: 965},
  {id: 170, name: "Newsreel LVI", subhead: "his first move was to board a fast train for Miami", first_page: 965, last_page: 966},
  {id: 171, name: "The Camera Eye (48)", subhead: "westbound to Havana Puerto-Mexico Galveston", first_page: 967, last_page: 971},
  {id: 172, name: "Margo Dowling", first_page: 971, last_page: 981},
  {id: 173, name: "Newsreel LVII", subhead: "the psychic removed all clothing", first_page: 981, last_page: 982},
  {id: 174, name: "Margo Dowling", first_page: 983, last_page: 1000},
  {id: 175, name: "Newsreel LVIII", subhead: "*In my dreams it always seems*", first_page: 1000, last_page: 1001},
  {id: 176, name: "The Campers at Kitty Hawk", first_page: 1001, last_page: 1006, mode_id: 4},
  {id: 177, name: "Newsreel LIX", subhead: "the stranger first coming to Detroit", first_page: 1007, last_page: 1008},
  {id: 178, name: "Charley Anderson", first_page: 1008, last_page: 1040},
  {id: 179, name: "Newsreel LX", subhead: "Was Céline to blame?", first_page: 1040, last_page: 1041},
  {id: 180, name: "Margo Dowling", first_page: 1042, last_page: 1053},
  {id: 181, name: "Newsreel LXI", subhead: "*High high high up in the hills*", first_page: 1053, last_page: 1055},
  {id: 182, name: "Charley Anderson", first_page: 1055, last_page: 1085},
  {id: 183, name: "Newsreel LXII", subhead: "STARS PORTEND EVIL", first_page: 1085, last_page: 1086},
  {id: 184, name: "Margo Dowling", first_page: 1087, last_page: 1126},
  {id: 185, name: "Newsreel LXIII", subhead: "but a few minutes later this false land disappeared", first_page: 1126, last_page: 1128},
  {id: 186, name: "Architect", first_page: 1128, last_page: 1132, mode_id: 4},
  {id: 187, name: "Newsreel LXIV", subhead: "WEIRD FISH DRAWN FROM SARGASSO SEA", first_page: 1132, last_page: 1134},
  {id: 188, name: "The Camera Eye (49)", subhead: "walking from Plymouth to North Plymouth", first_page: 1134, last_page: 1136},
  {id: 189, name: "Newsreel LXV", subhead: "STORM TIES UP SUBWAY; FLOODS AND LIGHTNING DARKEN CITY", first_page: 1136, last_page: 1137},
  {id: 190, name: "Mary French", first_page: 1137, last_page: 1155},
  {id: 191, name: "Newsreel LXVI", subhead: "HOLMES DENIES STAY", first_page: 1155, last_page: 1156},
  {id: 192, name: "The Camera Eye (50)", subhead: "they have clubbed us off the streets", first_page: 1156, last_page: 1158},
  {id: 193, name: "Newsreel LXVII", subhead: "when things are upset, there’s always chaos", first_page: 1159, last_page: 1160},
  {id: 194, name: "Poor Little Rich Boy", first_page: 1160, last_page: 1169, mode_id: 4},
  {id: 195, name: "Richard Ellsworth Savage", first_page: 1169, last_page: 1205},
  {id: 196, name: "Newsreel LXVIII", subhead: "WALL STREET STUNNED", first_page: 1205, last_page: 1207},
  {id: 197, name: "The Camera Eye (50)", subhead: "at the head of the valley in the dark of the hills", first_page: 1207, last_page: 1210},
  {id: 198, name: "Power Superpower", first_page: 1210, last_page: 1216, mode_id: 4},
  {id: 199, name: "Mary French", first_page: 1216, last_page: 1238},
  {id: 200, name: "Vag", first_page: 1238, last_page: 1240, mode_id: 4}
  ])

Chapter.where(mode_id: nil).each do |row|
  if row.name =~ /^Newsreel/
    row.mode_id = 1
  elsif row.name =~ /^The Camera/
    row.mode_id = 3
  else
    row.mode_id = 2
  end
  row.save
end

Chapter.where("first_page > 10 AND last_page < 357").each do |row|
  row.book_id = 2
  row.save
end
Chapter.where("first_page > 357 AND last_page < 762").each do |row|
  row.book_id = 3
  row.save
end
Chapter.where("first_page > 762").each do |row|
  row.book_id = 4
  row.save
end
Chapter.where(book_id: nil).each do |row|
  row.book_id = 1
  row.save
end

profiles = Profile.create([
  {id: 1, chapter_id: 1, historical_name: "Young American", wikipedia_url: ""},
  {id: 2, chapter_id: 9, historical_name: "Eugene Debs", wikipedia_url: "http://en.wikipedia.org/wiki/Eugene_V._Debs"},
  {id: 3, chapter_id: 20, historical_name: "Luther Burbank", wikipedia_url: "http://en.wikipedia.org/wiki/Luther_Burbank"},
  {id: 4, chapter_id: 25, historical_name: "Bill Haywood", wikipedia_url: "http://en.wikipedia.org/wiki/Big_Bill_Haywood"},
  {id: 5, chapter_id: 41, historical_name: "William Jennings Bryan", wikipedia_url: "http://en.wikipedia.org/wiki/William_Jennings_Bryan"},
  {id: 6, chapter_id: 51, historical_name: "Minor C. Keith", wikipedia_url: "http://en.wikipedia.org/wiki/Minor_C._Keith"},
  {id: 7, chapter_id: 56, historical_name: "Andrew Carnegie", wikipedia_url: "http://en.wikipedia.org/wiki/Andrew_Carnegie"},
  {id: 8, chapter_id: 64, historical_name: "Thomas Alva Edison", wikipedia_url: "http://en.wikipedia.org/wiki/Thomas_Edison"},
  {id: 9, chapter_id: 68, historical_name: "Charles Proteus Steinmetz", wikipedia_url: "http://en.wikipedia.org/wiki/Charles_Proteus_Steinmetz"},
  {id: 10, chapter_id: 75, historical_name: "Robert M. La Follette, Sr.", wikipedia_url: "http://en.wikipedia.org/wiki/Robert_M._La_Follette,_Sr."},
  {id: 11, chapter_id: 80, historical_name: "Jack Reed", wikipedia_url: "http://en.wikipedia.org/wiki/John_Reed_(journalist)"},
  {id: 12, chapter_id: 87, historical_name: "Randolph Bourne", wikipedia_url: "http://en.wikipedia.org/wiki/Randolph_Bourne"},
  {id: 13, chapter_id: 94, historical_name: "Theodore Roosevelt", wikipedia_url: "http://en.wikipedia.org/wiki/Theodore_Roosevelt"},
  {id: 14, chapter_id: 99, historical_name: "Paxton Hibben", wikipedia_url: ""},
  {id: 15, chapter_id: 109, historical_name: "Woodrow Wilson", wikipedia_url: "http://en.wikipedia.org/wiki/Woodrow_Wilson"},
  {id: 16, chapter_id: 119, historical_name: "J. Pierpoint Morgan", wikipedia_url: "http://en.wikipedia.org/wiki/J.P._Morgan"},
  {id: 17, chapter_id: 131, historical_name: "Joe Hill", wikipedia_url: "http://en.wikipedia.org/wiki/Joe_Hill"},
  {id: 18, chapter_id: 136, historical_name: "Wesley Everest", wikipedia_url: "http://en.wikipedia.org/wiki/Wesley_Everest"},
  {id: 19, chapter_id: 139, historical_name: "Unknown Soldier", wikipedia_url: "https://en.wikipedia.org/wiki/Tomb_of_the_Unknowns"},
  {id: 20, chapter_id: 144, historical_name: "F. W. Taylor", wikipedia_url: "http://en.wikipedia.org/wiki/Frederick_Winslow_Taylor"},
  {id: 21, chapter_id: 151, historical_name: "Henry Ford", wikipedia_url: "http://en.wikipedia.org/wiki/Henry_Ford"},
  {id: 22, chapter_id: 155, historical_name: "Thorstein Veblen", wikipedia_url: "http://en.wikipedia.org/wiki/Thorstein_Veblen"},
  {id: 23, chapter_id: 162, historical_name: "Isadora Duncan", wikipedia_url: "http://en.wikipedia.org/wiki/Isadora_Duncan"},
  {id: 24, chapter_id: 166, historical_name: "Rudolph Valentino", wikipedia_url: "http://en.wikipedia.org/wiki/Rudolph_Valentino"},
  {id: 25, chapter_id: 176, historical_name: "The Wright Brothers", wikipedia_url: "http://en.wikipedia.org/wiki/Wright_brothers"},
  {id: 26, chapter_id: 186, historical_name: "Frank Lloyd Wright", wikipedia_url: "http://en.wikipedia.org/wiki/Frank_Lloyd_Wright"},
  {id: 27, chapter_id: 194, historical_name: "William Randolph Hearst", wikipedia_url: "http://en.wikipedia.org/wiki/William_Randolph_Hearst"},
  {id: 28, chapter_id: 198, historical_name: "Samuel Insull", wikipedia_url: "http://en.wikipedia.org/wiki/Samuel_Insull"},
  {id: 29, chapter_id: 200, historical_name: "Young American", wikipedia_url: ""}
])