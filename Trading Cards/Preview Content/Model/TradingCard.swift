//
//  TradingDetailVIew.swift
//  Trading Cards
//
//  Created by 李泽宇 on 2024-11-29.
//

import Foundation

struct TradingCard: Identifiable {
    let id = UUID()
    let heroname: String
    let heroDescription: String
    let heroImage: String
    let skillName: String
    let skillDescription: String
    let origin: String
}

let briar = TradingCard(heroname: "Briar", heroDescription: "A failed experiment by the Black Rose, Briar's uncontrollable bloodlust required a special pillory to focus her frenzied mind. After years of confinement, this living weapon broke free from her restraints and unleashed herself into the world. Now she's controlled by no one—following only her hunger.", heroImage: "Briar1", skillName: "Certain Death", skillDescription: "Dealing physical damage to enemies. Then enter a frenzy, gaining Attack Speed, 15% Omnivamp, and causing attacks to deal bonus physical damage to the target and adjacent enemies.",origin: "Eldritch")

let smolder = TradingCard(heroname: "Smolder", heroDescription: "Hidden amongst the craggy cliffs of the Noxian frontier, under the watchful eyes of his mother, a young dragon is learning what it means to be heir to the Camavoran imperial dragon lineage.  Playful and eager to grow up, Smolder looks for any excuse to practice his burgeoning abilities.  Though he's still a fledgling, his skills are nothing to sneeze at, easily setting fire to anything that burns.", heroImage: "Smolder1", skillName: "Dragon Practice", skillDescription: "Innate: Smolder generates a stack of Dragon Practice each time he hits an enemy champion with an ability, or whenever An icon for Smolder's ability Super Scorcher Breath Super Scorcher Breath kills a  minion or  monster. His basic abilities deal bonus magic damage based on stacks.",origin: "Dragon")

let jinx = TradingCard(heroname: "Jinx", heroDescription: "A manic and impulsive criminal from Zaun Crest icon Zaun, Jinx Jinx lives to wreak havoc without care for the consequences. With an arsenal of deadly weapons, she unleashes the loudest blasts and brightest explosions to leave a trail of mayhem and panic in her wake. Jinx despises boredom and gleefully brings her own chaotic brand of pandemonium wherever she goes.", heroImage: "Jinx1", skillName: "Get Excited!", skillDescription: "Gain 125% decaying Attack Speed for 5 seconds. For the duration, attacks fire rockets that deal (110% AD + 16 / 24 / 36% Ability power icon AP) physical damage and ignore 50% Armor.", origin: "Sugarcraft")

let tradingCards = [
    briar,
    smolder,
    jinx
]
