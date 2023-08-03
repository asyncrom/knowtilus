import 'package:get/get.dart';

const trads = {
  'en_US': {
    //
    // Hello
    'hello': "Hello World",
    //
    // Welcome page
    'important_notice_title': "Important Notice:",
    'important_notice': '''
Thank you for using Knowtilus mobile application!

I would like to remind you that while this app provides a wealth of knowledge and information related to sailing, it is crucial to understand that it should only be used as a supplementary tool. 
It is not intended to replace essential knowledge and skills that are necessary for safe navigation, including but not limited to understanding buoy colors, chart work, vessel lights, rights of way and other vital sailing protocols.

I strongly recommend that you acquire and maintain comprehensive sailing knowledge through appropriate training, courses, and firsthand experience. Familiarize yourself with local regulations, international maritime guidelines, and consult official nautical charts and guides before embarking on any sailing journey. 
Remember that the responsibility for ensuring safety on the water lies with the individual sailor.

While I strive to provide accurate and up-to-date information, I cannot assume liability for any errors, omissions, or incidents that may occur as a result of relying solely on this application. 
Always exercise caution, use your judgment, and prioritize the safety of yourself, your crew, and other vessels in your vicinity.

Fair winds and safe sailing adventures ❤️
Asyncrom 
''',
    //
    // Utils
    'see_more': "See more...",
    'see_less': "See less...",
    'wip': "Work in progress...",
    'for_later': "Page Under Construction.\nThis page is currently under construction and will be available in a future update.\nThank you for your understanding.",
    //
    // Infos
    'report_contact':"Please report any error, or send any suggestion at knowtilus@pm.me",
    'source_code': "The source code of this app is available on my GitHub profile : github.com/asyncrom",
    'chat_contact': "You can add me on discord : asyncrom",
    'warning_dev': "This app is still in early development",
    'todo': "Work in progress:\n- Security topic\n- Knots topic\n- Flashcards",
    //
    // Home
    'sound_signals': "Sound signals",
    'vessels': "Vessels",
    'alphabet': "Alphabet",
    'wind': "Wind",
    'vhf': "VHF",
    'buoy': "Navigation marks",
    'knots': "Knots",
    'rightsofway': "Rights of way",
    'report': "Report an error",
    'infos': "Informations",

    //
    // Sounds
    'what_sounds':
    "▪️ means a short blast (1s)\n➖ means a long blast (5s)",
    'altering_stb': "I am altering course to starboard.",
    'altering_prt': "I am altering course to port.",
    'altering_astern': "I am operating my engines astern.",
    'pilot_vessel': "Pilot vessel in fog engaged in pilot duties.",
    'doubt_about': "I do not understand your intentions.",
    'diver_down_snd': "Diver down, keep clear and slow down.",
    'here_i_snd':
    "Power driven vessel in fog or approaching a blind bend. Here I come.",
    'restricted_snd':
    "Fog signal for restricted in ability to manoeuvre (fishing, sailing vessel...)",
    'last_in_tow': "Last vessel in the tow.",
    'agree_snd': "I agree with your intentions.",
    'vessel_stopped': "Vessel stopped.",
    'ovrtk_stb': "I intend to overtake you on your starboard side.",
    'ovrtk_prt': "I intend to overtake you on your port side.",
    //
    // Lights

    'less_seven.png': "Any boat less than 7 meters",
    'motor_less_50.png': "Motor boat < 50m",
    'motor_more_50.png': "Motor boat > 50m",
    'only_sail.png': "Boat sailing (no engine)",
    'only_sail_more_50.png': "Boat sailing > 50m (no engine)",
    'sail_and_motor_less_50.png': "Sailboat using engine < 50m",
    'sail_and_motor_more_50.png': "Sailboat using engine > 50m",

    'anchored_less_50.png': "Anchored boat < 50m",
    'anchored_more_200.png': "Anchored boat > 50m",
    'command.png': "Grounded vessel",
    'difficult_maneuver.png': "Vessel with difficulties to maneuver",
    'draught.png': "Vessel constrained by draught",
    'fishing.png': "Vessel fishing",
    'no_command.png': "Vessel not under command",
    'obstruction.png':
    "Vessel with obstruction\nPass green side (double triangle)",
    'pilot.png': "Vessel with pilot duties",
    'towing_less_200.png': "Vessel towing < 200m",
    'towing_more_200.png': "Vessel towing > 200m",
    'trawling.png': "Vessel trawling",

    //
    // Alphabet
    'nato_alphabet': "NATO alphabet",
    'maritime_flags': "Maritime flags",
    'morse': "Morse",
    'flag_mean': "Meaning of the flag alone",
    'two_letters': "Two letter signals",

    'Alfa': "I have a diver down; keep well clear at slow speed.",
    'Bravo': "I am taking in or discharging or carrying dangerous goods.",
    'Charlie': "Affirmative.",
    'Delta': "Keep clear of me; I am maneuvering with difficulty.",
    'Echo': "I am altering my course to starboard.",
    'Foxtrot': "I am disabled; communicate with me.",
    'Golf': "I require a pilot. //🐟 I am hauling nets.",
    'Hotel': "I have a pilot on board.",
    'India': "I am altering my course to port.",
    'Juliett':
    "I am on fire and have dangerous cargo on board: keep well clear of me.",
    'Kilo': "I wish to communicate with you.",
    'Lima': "You should stop your vessel instantly.",
    'Mike': "My vessel is stopped and making no way through the water.",
    'November': "Negative.",
    'Oscar': "Man overboard.",
    'Papa':
    "All persons should report on board as the vessel is about to proceed to sea.",
    'Quebec': "My vessel is 'healthy' and I request free pratique.",
    'Romeo': "[No ICS meaning as single flag.]",
    'Sierra': "I am operating astern propulsion.",
    'Tango': "Keep clear of me.",
    'Uniform': "You are running into danger.",
    'Victor': "I require assistance.",
    'Whiskey': "I require medical assistance.",
    'X-ray':
    "Stop carrying out your intentions and watch for my signals.",
    'Yankee': "I am dragging my anchor.",
    'Zulu': "I require a tug. //🐟 I am shooting nets.",

    'al_distress': "I'm in distress",
    'al_ok_distress': "Your distress message has been seen",
    'al_go_harbour': "Tow me back to port",
    'al_next': "I'm standing next to you",
    'al_follow': "Follow me",
    'al_away': "Stay away",
    'al_aground': "I am grounded",
    'al_banned': "Navigation prohibited",
    'al_cant_tow': "I can't tow you",
    'al_danger_exp': "There is a risk of explosion",
    'al_infect': "Disinfecting my vessel",
    'al_forbid': "Boarding is prohibited",
    'al_good': "I wish you a safe journey",

    //
    // Wind
    'bf_scale': "Beaufort number",
    'bf_description': "Description",
    'bf_arrow': "Symbol",
    'minmax': "MIN - MAX wind speed in knots",
    'wave_h': "Wave height in meters",
    'w_0': "Calm ",
    'w_1': "Light air ",
    'w_2': "Light breeze",
    'w_3': "Gentle breeze",
    'w_4': "Moderate breeze",
    'w_5': "Fresh breeze",
    'w_6': "Strong breeze",
    'w_7': "High wind,moderate gale,near gale",
    'w_8': "fresh gale",
    'w_9': "Strong/severe gale",
    'w_10': "Storm, whole gale ",
    'w_11': "Violent storm",
    'w_12': "Hurricane-force",

    //
    // VHF
    'vhf_can': "VHF channels",
    'vhf_messages': "VHF voice call :",
    'see_more_mayday': "See distress message",
    'see_more_panpan': "See urgency message",
    'chan_16':
    "International distress, safety and calling \n All vessels equipped with VHF must maintain watch.",
    'chan_70': "Digital Selective Calling (used by the distress button)",
    'chan_6': "Ship-to-ship",
    'chan_9': "Marinas",
    'chan_12': "Commercial port operations",
    'chan_10': "Coast Guard, semaphore, Navy,",
    'chan_67': "CROSS / SNSM",
    'chan_63':
    "Continuous weather forecasts (available in certain areas)",
    'chan_79': "Broadcasting weather reports",

    'mayday_message': '''
Mayday Mayday Mayday\n
This is [yatch name], [yatch name], [yatch name]\n
[Call sign],\n
Mayday\n
[yatch name], [Call sign]\n
Position is [GPS position // bearing and distance to a charted object // fix or transit]\n
Nature of distress is [ManOverBoard // sinking // fire //...]\n
I require immediate assistance !\n
[Additional informations to help the rescuers : number of people on board, liferaft, ...]\n
Over.
          ''',

    'panpan_message': '''
PanPan PanPan PanPan\n
All stations, all stations, all stations\n
This is [yatch name],[Call sign]\n
Position is [GPS position // bearing and distance to a charted object // fix or transit]
Nature of problem [example: broken mast i need a tow]
[Additional informations]
Over.
          ''',

    //
    // Buoys
    'cards': "Cardinals",
    'lat': "Lateral marks",
    'a_b_exp': "Lateral marks show the port (left) and starboard (right) sides of navigable waters or channels.\nThis chart shows the color of port side buoys\nRegion A port is RED\nRegion B port is GREEN",
    'see_more_a': "Region A buoyage system",
    'b_direction': "When going from sea to harbour:\n- red/circle on port,\n-green/triangle on starboard",

    'card_north': "North Cardinal",
    'card_north_info': "BY (Black Yellow)\nQ [Quick flashing] or VQ [Very Quick white flashing]",
    'card_north_sense': "Danger located South of it. Pass North !",

    'card_east': "East Cardinal",
    'card_east_info': "BYB (Black Yellow Black)\nQ(3) 5s [three quick white flashes every 5 seconds]",
    'card_east_sense': "Danger located West of it. Pass East !",

    'card_south': "South Cardinal",
    'card_south_info': "YB (Yellow Black)\nQ(6) + LFl 15s [six quick white flashes plus a long flash every 10 seconds]",
    'card_south_sense': "Danger located North of it. Pass South !",

    'card_west': "West Cardinal",
    'card_west_info': "YBY (Yellow Black Yellow)\nQ(9) 15s [nine quick white flashes every 15 seconds]",
    'card_west_sense': "Danger located East of it. Pass West !",

    'other_danger': "Isolated danger mark",
    'other_danger_info': "Black with 1 or more red horizontal bands and 2 spheres as the top mark.\nFl(2) 5s [two white flashes every 5 seconds]",
    'other_danger_sense': "Show where there is an isolated danger that has navigable water all round it. Don’t pass too close",

    'other_safe': "Safe water mark",
    'other_safe_info': "Red and white vertical stripes with a single red sphere as the top mark\nLFl 10s or Iso. [One long white flash or isophase flash].\nMorse code 'A' also exists (.-)",
    'other_safe_sense': "Show that there is navigable water all around the mark. For example, fairway, mid-channel or landfall mark.",

    'other_special':"Special mark",
    'other_special_info':"Yellow and sometimes have a yellow X as the top mark.\nFlashing yellow.",
    'other_special_sense':"Special marks show a special area or feature.\nFor example, to show that a channel divides or to mark cables or pipelines.",

    'other_wreck':"Emergency wreck marking buoy",
    'other_wreck_info':"Blue and yellow vertical stripes and are a pillar or spar shape with a yellow cross as the top mark.\nFlashing light 1 second of blue light and 1 second of yellow light, with 0.5 seconds of darkness in between.",
    'other_wreck_sense':"Emergency wreck marking buoys are used to identify new dangers or wrecks. ",

    'side_port':"Port mark",
    'side_port_info':"Red with a can-like shape\nRed flashing light, the pattern is specified on the marine map",
    'side_port_sense':"When going to harbour, leave your on port.\nWhen going to sea, leave on your starboard",

    'side_starboard':"Port starboard",
    'side_starboard_info':"Green with a cone-like shape\nGreen flashing light, the pattern is specified on the marine map",
    'side_starboard_sense':"When going to harbour, leave your on starboard.\nWhen going to sea, leave on your port",

    'pref_port':"Preferred Channel Mark PORT",
    'pref_port_info':"Green-Red-Green\nG Fl(2) + Fl [Two flashes then one flash, green]",
    'pref_port_sense':"This buoy is more starboard mark than port mark.\nThe port channel is the main channel.",

    'pref_starboard':"Preferred Channel Mark STARBOARD",
    'pref_starboard_info':"Red-Green-Red\nR Fl(2) + Fl [Two flashes then one flash, red]",
    'pref_starboard_sense':"This buoy is more port mark than starboard mark.\nThe starboard channel is the main channel.",

    //
    // Right of way
    'ordof': "Order of Priority",
    'ordmotor': "Priority for motorboats",
    'ordsail': "Priority for sailboats",
    'high_is_pr': "The highest is Stand-On vessel :",
    'same_motor':"When two motorboats with the same privilege are on a collision course :",
    'same_sail':"When two sailboats with the same privilege are on a collision course :",
    'give_way': "If you are the Give-Way vessel, you must act as if the 'stand-on' vessel has the responsibility to keep going the way it is going. It is your responsibility to signal your intentions to the stand-on vessel, and it is your responsibility to maneuver your boat around the other in a safe manner. Also known as a 'Burdened' vessel, as it has the burden of.",
    'stand_on': "If you are the Stand-On vessel, it is your responsibility to acknowledge the intended actions of the give-way vessel. You must also maintain your current course and speed until the give-way vessel passes, or you enter a dangerous situation.",
    'pr_1': "Overtaken vessel (top priority)",
    'pr_2': "Vessels not under command",
    'pr_3': "Vessels restricted in their ability to maneuver",
    'pr_4': "Vessels constrained by draft",
    'pr_5': "Fishing vessels engaged in fishing, with gear deployed",
    'pr_6': "Sailing vessels",
    'pr_7': "Power driven vessels",
    'sitm_1': "If you see the other vessel on starboard (right) your 'give-way'\nIf you see the other vessel on port (left) your 'stand-on'",
    'sitm_2': "If you are overtaking a vessel (sternlight area), he is 'stand-on', you are 'give-way'",
    'sitm_3': "If you are face-to-face you should indicate clearly that you are turning starboard",

    'sits_1': "If your are on a different tack:\n- The sailboat starboard tack (wind coming from starboard) is 'stand-on'\n- The sailboat port tack (wind coming from port) is 'give-way'",
    'sits_2': "If you are on the same tack, the down-wind sailboat is 'stand-on'\nThe sailboat that receive the wind first is 'give-way'",
    'sits_3': "If you are overtaking a vessel (sternlight area), he is 'stand-on', you are 'give-way'",
  },
  'fr_FR': {
    'hello': "Bonjour le monde",
    'important_notice_title': "Important:",
    'important_notice': '''
Merci d'utiliser l'application mobile Knowtilus !

Je tiens à vous rappeler que bien que cette application offre une grande quantité de connaissances et d'informations liées à la voile, il est essentiel de comprendre qu'elle ne devrait être utilisée que comme un outil supplémentaire.
Elle n'est pas destinée à remplacer les connaissances et compétences essentielles nécessaires à une navigation sûre, notamment la compréhension des couleurs des bouées, le travail sur les cartes marines, les feux des navires, les règles de priorité et autres protocoles de navigation vitaux.

Je vous recommande vivement d'acquérir et de maintenir une connaissance complète de la voile grâce à une formation appropriée, des cours et une expérience pratique. Familiarisez-vous avec les réglementations locales, les directives maritimes internationales et consultez les cartes marines et les guides officiels avant de vous lancer dans un voyage en voilier.
Rappelez-vous que la responsabilité d'assurer la sécurité sur l'eau incombe au marin individuel.

Bien que je m'efforce de fournir des informations précises et à jour, je ne peux pas assumer de responsabilité en cas d'erreurs, d'omissions ou d'incidents pouvant survenir en se fiant uniquement à cette application.
Faites toujours preuve de prudence, utilisez votre jugement et privilégiez la sécurité de vous-même, de votre équipage et des autres navires à proximité.

Bons vents et bonnes aventures en voile ❤️
Asyncrom
''',
    //
    // Utils
    'see_more': "Voir plus...",
    'see_less': "Voir moins...",

    //
    // Infos
    'warning_dev': "Cette application est toujours en phase de developement",
    'report_contact':"Merci de signaler les erreurs et d'envoyer toute suggestion à knowtilus@pm.me",
    'source_code': "Le code source est publique sur mon compte github : github.com/asyncrom",
    'chat_contact': "Vous pouvez m'ajouter sur discord : asyncrom",
    'todo': "Travail en cours:\n- Sujet sécurité\n- Sujet nœuds\n- Flashcards",

    //
    // Home
    'sound_signals': "Signaux de brume",
    'vessels': "Navires",
    'alphabet': "Alphabet",
    'wind': "Vent",
    'vhf': "VHF",
    'buoy': "Marques de navigation",
    'knots': "Noeuds",
    'rightsofway': "Droits de route",
    'report': "Signaler une erreur",
    'infos': "Informations",


    //
    // Sounds
    'what_sounds': "▪️ est un son court (1s)\n➖ est un son long (5s)",
    'altering_stb': "Je viens à tribord.",
    'altering_prt': "Je viens à bâbord.",
    'altering_astern': "Je bats en arrière.",
    'pilot_vessel': "Navire pilote.",
    'doubt_about': "J'ai des doutes sur vos intentions.",
    'diver_down_snd': "Plongeurs, ralentir et passer à distance.",
    'here_i_snd':
    "Navire à moteur dans le brouillard ou à l'approche d'un virage sans visibilité. Je me signale.",
    'restricted_snd': "Navire privilégié (fishing, sailing vessel...)",
    'last_in_tow': "Dernier navire remorqué.",
    'agree_snd': "Je suis d'accord avec vos intentions.",
    'vessel_stopped': "Navire sans erre",
    'ovrtk_stb': "Je dépasse par tribord.",
    'ovrtk_prt': "Je dépasse par bâbord.",
    //
    // Lights

    'less_seven.png': "Navire de moins de 7m",
    'motor_less_50.png': "Navire à moteur < 50m",
    'motor_more_50.png': "Navire à moteur > 50m",
    'only_sail.png': "Voilier",
    'only_sail_more_50.png': "Voilier > 50m",
    'sail_and_motor_less_50.png': "Voilier au moteur < 50m",
    'sail_and_motor_more_50.png': "Voilier au moteur > 50m",

    'anchored_less_50.png': "Navire au mouillage < 50m",
    'anchored_more_200.png': "Navire au mouillage > 50m",
    'command.png': "Navire non maître de sa manœuvre sans erre, échoué",
    'difficult_maneuver.png': "Navire à capacité de manœuvre restreinte",
    'draught.png': "Navire contraint par son tirant d'eau",
    'fishing.png': "Pêcheur",
    'no_command.png': "Navire non maître de sa manœuvre avec erre",
    'obstruction.png':
    "Navire avec obstruction \nPasser coté vert (ou double losange)",
    'pilot.png': "Navire pilote",
    'towing_less_200.png': "Train de remorque < 200m",
    'towing_more_200.png': "Train de remorque > 200m",
    'trawling.png': "Chalutier",
    //
    // Alphabet
    'nato_alphabet': "Alphabet OTAN",
    'maritime_flags': "Signaux maritimes",
    'morse': "Morse",
    'flag_mean': "Signification du drapeau seul",
    'two_letters': "Signaux de deux lettres",

    'Alfa':
    "J'ai un scaphandrier en plongée; tenez-vous à distance et avancez lentement.",
    'Bravo':
    "Je charge, ou décharge, ou je transporte des marchandises dangereuses.",
    'Charlie': "Oui (réponse affirmative),",
    'Delta': "Ne me gênez pas, je manœuvre avec difficulté",
    'Echo': "Je viens sur tribord",
    'Foxtrot': "Je suis désemparé, communiquez avec moi.",
    'Golf': "J'ai besoin d'un pilote. //🐟 Je relève mes filets.",
    'Hotel': "'ai un pilote à bord",
    'India': "Je viens sur bâbord.",
    'Juliett':
    "Tenez vous à distance j'ai un incendie à bord et je transporte des marchandises dangereuses.",
    'Kilo':
    "Je désire communiquer avec vous ou je vous invite à transmettre.",
    'Lima': "Stoppez votre navire immédiatement.",
    'Mike': "Mon navire est stoppé et n'a plus d'erre.",
    'November': "Non (réponse négative).",
    'Oscar': "Homme à la mer.",
    'Papa':
    "Toutes les personnes doivent se présenter à bord, le navire va prendre la mer.",
    'Quebec': "Mon navire est indemne, je demande la libre-pratique.",
    'Romeo': "[Signal de procédure]",
    'Sierra': "Je bats en arrière.",
    'Tango': "Ne me gênez pas. //🐟 je fais du chalutage jumelé.",
    'Uniform': "Vous courez vers un danger.",
    'Victor': "Je demande assistance.",
    'Whiskey': "Demande d'assistance médicale.",
    'X-ray': "Arrêtez vos manœuvres et veillez mes signaux.",
    'Yankee': "Mon ancre chasse.",
    'Zulu':
    "J'ai besoin d'un remorqueur. //🐟 Je mets mes filets à l'eau.",

    'al_distress': "Je suis en détresse",
    'al_ok_distress': "Votre signal de détresse a été compris",
    'al_go_harbour': "Remorquez-moi au port",
    'al_next': "Je me tiens à côté de vous",
    'al_follow': "Suivez-moi",
    'al_away': "Restez à l'écart",
    'al_aground': "Je suis échoué",
    'al_banned': "Navigation interdite",
    'al_cant_tow': "Je ne peux pas vous remorquer",
    'al_danger_exp': "Il y a un danger d'explosion",
    'al_infect': "Je désinfecte mon navire",
    'al_forbid': "Il est interdit de monter à bord",
    'al_good': "Je vous souhaite bon voyage",

    //
    // Wind
    'bf_scale': "Nombre de Beaufort",
    'bf_description': "Description",
    'bf_arrow': "Symbole",
    'minmax': "MIN - MAX vitesse de vent en noeuds",
    'wave_h': "Hauteur de vague en mètres",
    'w_0': "Calme",
    'w_1': "Très légère brise",
    'w_2': "Légère brise",
    'w_3': "Petite brise",
    'w_4': "Jolie brise",
    'w_5': "Bonne brise",
    'w_6': "Vent frais",
    'w_7': "Grand frais",
    'w_8': "Coup de vent",
    'w_9': "Fort coup de vent",
    'w_10': "Tempête",
    'w_11': "Violente tempête",
    'w_12': "Ouragan",

    //
    // VHF
    'vhf_can': "Canaux VHF",
    'vhf_messages': "Messages de détresse, urgence, sécurité :",
    'see_more_mayday': "Voir le message de détresse",
    'see_more_panpan': "Voir le message d'urgence",
    'chan_16':
    "Veille et Sauvergarde de la Vie Humaine en Mer \n Les navires équipés d'une VHF doivent maintenir l'écoute.",
    'chan_70':
    "Appel Selectif Numérique (utilisé par le bouton de détresse)",
    'chan_6': "Trafic entre navires",
    'chan_9': "Capitaineries des ports de plaisance",
    'chan_12': "Capitaineries des ports de commerce",
    'chan_10': "Marine nationale, sémaphores, phares et balises",
    'chan_67': "CROSS et SNSM",
    'chan_63': "Métérologie en continu ( dispo certaines zones )",
    'chan_79': "Diffusion des bulletins météorologiques",

    'mayday_message': '''
Mayday Mayday Mayday\n
Ici [nom du bateau], [nom du bateau], [nom du bateau]\n
[Indicatif d'appel]\n
Mayday\n
[nom du bateau], [Indicatif d'appel]\n
Nous sommes au [position GPS // position relative à une infrastructure remarquable]\n
Nature de la détresse: [Homme à la mer // voie d'eau // feu //...]\n
Nous demandons assistance immédiate!\n
[Informations additionels : nombre de personnes à bord, abandons du navire ?, ...]\n
À vous.
          ''',

    'panpan_message': '''
PanPan PanPan PanPan\n
À toutes les stations\n
Ici [nom du bateau],[Indicatif d'appel]\n
Nous sommes [GPS position // bearing and distance to a charted object // fix or transit]\n
Nature du problème: [exemple: Mât cassé, remorquage nécessaire]\n
[Informations additionels]\n
À vous.
          ''',

    'cards': "Cardinales",
    'lat': "Marques latérales",
    'a_b_exp': "Les marques latérales montrent le côté bâbord (gauche) et tribord (droit) d'un chenal.\nCette carte montre la couleur de la boué bâbord en fonction de la zone:\nZone A bâbord est rouge\nZone B bâbord est vert",
    'see_more_a': "Système de marques zone A",
    'b_direction': "Quand l'on va de la mer au port:\n- cylindre rouge à bâbord,\n- triangle vert à tribord ",

    'card_north': "Cardinale Nord",
    'card_north_info': "BY (Black Yellow)\nQ [Quick flashing] ou VQ [flashes très rapides blancs]",
    'card_north_sense': "Danger au Sud, passer au Nord",

    'card_east': "Cardinale Est",
    'card_east_info': "BYB (Black Yellow Black)\nQ(3) 5s [trois flashes blancs toutes les 5 secondes]",
    'card_east_sense': "Danger à l'Ouest, passer à l'Est",

    'card_south': "Cardinale Sud",
    'card_south_info': "YB (Yellow Black)\nQ(6) + LFl 15s [six flashes plus un long flash, blanc, toutes les 10 secondes]",
    'card_south_sense': "Danger au Nord, passer au Sud",

    'card_west': "West Cardinal",
    'card_west_info': "YBY (Yellow Black Yellow)\nQ(9) 15s [neuf flashes rapides toutes les 5 secondes]",
    'card_west_sense': "Danger à l'Est, passer à l'Ouest",

    'other_danger': "Marque de danger isolé",
    'other_danger_info': "Noir avec des bandes rouges et deux sphères noires comme marqueur.\nFl(2) 5s [deux flashes blancs groupés toutes les 5 secondes]",
    'other_danger_sense': "Montre un danger sur un point particulier. Rester à distance",

    'other_safe': "Marque d'eau saine",
    'other_safe_info': "Bandes verticales rouges et blanches avec une boule rougecomme marqueur\nLFl 10s or Iso. [Flash long ou isophase].\nExiste aussi avec le code morse 'A'(.-)",
    'other_safe_sense': "Montre que la zone est navigable. Par exemple, le milieu du chenal ou grande profondeur.",

    'other_special':"Marque spéciale",
    'other_special_info':"Jaune avec parfois un 'X' comme marqueur.\nFlashes jaunes.",
    'other_special_sense':"Délimite une zone ou emplacement avec une charactéristique spéciale\nPar exemple un cable sous-marin, une zone de vitesse, une séparation.",

    'other_wreck':"Bouée d'épave récente",
    'other_wreck_info':"Bleue et jaune avec un marqueur '+'.\nUn flash jaune et un flash bleu de une seconde.",
    'other_wreck_sense':"Utilisées pour identifier les nouveaux dangers ou les nouvelles épaves (non répertoriés sur les cartes). ",

    'side_port':"Marque latérale bâbord",
    'side_port_info':"Cyclindre rouge\nFlash rouge, voir le patterne individuel sur une carte marine",
    'side_port_sense':"Direction le port, laisser sur bâbord (à gauche)\nDirection la mer, laisser sur tribord (à droite)",

    'side_starboard':"Marque latérale tribord",
    'side_starboard_info':"Triangle vert\nFlash vert, voir le patterne individuel sur une carte marine",
    'side_starboard_sense':"Direction le port, laisser sur tribord (à droite)\nDirection la mer, laisser sur bâbord (à gauche)",

    'pref_port':"Chenal préféré à bâbord",
    'pref_port_info':"Vert-Rouge-Vert\nG Fl(2) + Fl [deux flashes puis un flash, vert]",
    'pref_port_sense':"Cette boué est plus marque tribord que bâbord.\nLe chenal de gauche est le chenal principal",

    'pref_starboard':"Chenal préféré à tribord",
    'pref_starboard_info':"Rouge-Vert-Rouge\nR Fl(2) + Fl [Tdeux flashes puis un flash, rouge]",
    'pref_starboard_sense':"Cette boué est plus marque bâbord que tribord.\nLe chenal de droite est le chenal principal",

    //
    // Right of way
    'ordof': "Ordre des privilèges",
    'ordmotor': "Privilèges pour les bateaux à moteur",
    'ordsail': "Privilèges pour les voiliers",
    'high_is_pr': "Le plus haut = le plus privilégié :",
    'same_motor':"Quand deux bateaux à moteur sont sur une route de collision :",
    'same_sail':"Quand deux voiliers sont sur une route de collision :",
    'give_way': "En tant que navire manoeuvrant, vous devez agir comme si le navire privilégié allais continuer sa route. Il est de votre résponsabilité d'attirer l'attention et d'indiquer vos intentions clairement, ainsi que de manoeuvrer autour du navire privilégié sans creer un situation dangereuse.",
    'stand_on': "Si vous êtes le navire privilégié, il est de votre responsabilité d'interpreter les actions du navire manoeuvrant. Vous devez aussi maintenir votre route (trajectoir et vitesse) jusqu'à ce que l'autre navire soit passé, ou qu'il y ai une situation dangereuse.",
    'pr_1': "Overtaken vessel (top priority)",
    'pr_2': "Navire non maitre de sa manoeuvre",
    'pr_3': "Navire à capacité de manoeuvre restreinte",
    'pr_4': "Navire handicapé par son tirant d'eau",
    'pr_5': "Navire de pêche",
    'pr_6': "Voilier",
    'pr_7': "Navire à moteur sans handicapes",
    'sitm_1': "Si vous voyez l'autre navire par tribord, vous êtes manoeuvrant\nSi vous voyez l'autre navire par bâbord, vous êtes privilégié",
    'sitm_2': "Si vous rattrapez un navire (zone du feu de poupe), il est privilégié, vous êtes manoeuvrant",
    'sitm_3': "Si vous êtes face à face, vous devez indiquer clairement que vous tournez à tribord",

    'sits_1': "Si vous êtes sur une amure différente:\n- Le navire tribord amure (le vent arrive par la droite) est privilégié\n- Le navire bâbord amure (le vent arrive par la gauche) est manoeuvrant",
    'sits_2': "Si vous êtes sur la même amure, le navire sous le vent est privilégié\nLe navire qui reçoit le vent en premier est manoeuvrant",
    'sits_3': "Si vous rattrapez un navire (zone du feu de poupe), il est privilégié, vous êtes manoeuvrant",
  }
};

class Ktranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => trads;
}