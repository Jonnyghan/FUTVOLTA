# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
newc = Team.create(name:"Newcastle United",abbreviation:"NEW",image:"https://1000logos.net/wp-content/uploads/2018/06/Newcastle-United-Logo-768x432.png")
manu = Team.create(name:"Manchester United",abbreviation:"MAN", image:"https://1000logos.net/wp-content/uploads/2017/03/Manchester-United-Logo-768x617.png")
tot = Team.create(name:"Tottenham Hotspur",abbreviation:"TOT",image:"https://1000logos.net/wp-content/uploads/2018/06/tottenham-hotspur-logo-768x432.png")
bay = Team.create(name:"FC Bayern Munich",abbreviation:"FCB",image:"https://1000logos.net/wp-content/uploads/2018/04/Bayern-M%C3%BCnchen-Logo-768x432.png")
val = Team.create(name:"Valencia CF",abbreviation:"VAL",image:"https://1000logos.net/wp-content/uploads/2018/06/Valencia-Logo-768x432.png")
dor = Team.create(name:"Borussia Dortmund",abbreviation:"DOR",image:"https://1000logos.net/wp-content/uploads/2017/08/BVB-Logo-768x650.png")
rbl = Team.create(name:"RB Leipzig",abbreviation:"RBL",image:"https://vignette.wikia.nocookie.net/logopedia/images/d/da/RB_Leipzig_logo_%28introduced_2014%29.svg/revision/latest/scale-to-width-down/250?cb=20190222172722")
ben = Team.create(name:"SL Benfica",abbreviation:"SLB",image:"https://vignette.wikia.nocookie.net/logopedia/images/a/a2/SL_Benfica_logo.svg/revision/latest/scale-to-width-down/200?cb=20120824184856")
mil = Team.create(name:"AC Milan",abbreviation:"ACM",image:"https://1000logos.net/wp-content/uploads/2016/10/AC-Milan-Logo-768x384.png")

Player.create(name:"Joelinton", age: 23, position:"Fwd", team_id:newc.id)
Player.create(name:"Miguel Almiron", age: 26, position:"Mid", team_id:newc.id)
Player.create(name:"Allan Saint-Maximin", age: 23, position:"Mid", team_id:newc.id)
Player.create(name:"Fabian Schar", age: 28, position:"Def", team_id:newc.id)
Player.create(name:"Martin Dubravka", age: 31, position:"GK", team_id:newc.id)

Player.create(name:"Bruno Fernandes", age: 25, position:"Mid", team_id:manu.id)
Player.create(name:"Anthony Martial", age: 24, position:"Fwd", team_id:manu.id)
Player.create(name:"Odion Ighalo", age: 30, position:"Fwd", team_id:manu.id)
Player.create(name:"Aaron Wan-Bissaka", age: 22, position:"Def", team_id:manu.id)
Player.create(name:"David De Gea", age: 29, position:"GK", team_id:manu.id)

Player.create(name:"Harry Kane", age: 26, position:"Fwd", team_id:tot.id)
Player.create(name:"Steven Bergwijn", age: 22, position:"Fwd", team_id:tot.id)
Player.create(name:"Heung-Min Son", age: 27, position:"Mid", team_id:tot.id)
Player.create(name:"Toby Alderwiereld", age: 31, position:"Def", team_id:tot.id)
Player.create(name:"Hugo Lloris", age: 33, position:"GK", team_id:tot.id)

Player.create(name:"Robert Lewandowski", age: 31, position:"Fwd", team_id:bay.id)
Player.create(name:"Corentin Tolisso", age: 25, position:"Mid", team_id:bay.id)
Player.create(name:"Alphonso Davies", age: 19, position:"Def", team_id:bay.id)
Player.create(name:"David Alaba", age: 28, position:"Def", team_id:bay.id)
Player.create(name: "Manuel Neuer", age: 34, position:"GK", team_id:bay.id)

Player.create(name:"Rodrigo Moreno", age: 29, position:"Fwd", team_id:val.id)
Player.create(name:"Ferran Torres", age: 20, position:"Mid", team_id:val.id)
Player.create(name:"Goncalo Guedes", age: 23, position:"Mid", team_id:val.id)
Player.create(name:"Alessandro Florenzi", age: 29, position:"Def", team_id:val.id)
Player.create(name: "Jasper Cillessen", age: 31, position:"GK", team_id:val.id)

Player.create(name: "Erling Braut Håland", age: 19, position:"Fwd", team_id:dor.id)
Player.create(name: "Jadon Sancho", age: 20, position:"Fwd", team_id:dor.id)
Player.create(name: "Axel Witsel", age: 31, position:"Mid", team_id:dor.id)
Player.create(name: "Mats Hummels", age: 31, position:"Def", team_id:dor.id)
Player.create(name: "Roman Bürki", age: 29, position:"GK", team_id:dor.id)

Player.create(name: "Yussuf Poulsen", age: 26, position:"Fwd", team_id:rbl.id)
Player.create(name: "Marcel Sabitzer", age: 26, position:"Mid", team_id:rbl.id)
Player.create(name: "Tyler Adams", age: 21, position:"Def", team_id:rbl.id)
Player.create(name: "Dayot Upamecano", age: 21, position:"Def", team_id:rbl.id)
Player.create(name: "Péter Gulácsi", age: 30, position:"GK", team_id:rbl.id)

Player.create(name: "Vinicius", age: 25, position:"Fwd", team_id:ben.id)
Player.create(name: "Rafa Silva", age: 27, position:"Mid", team_id:ben.id)
Player.create(name: "Pizzi", age: 30, position:"Mid", team_id:ben.id)
Player.create(name: "Francisco Ferreira", age: 23, position:"Def", team_id:ben.id)
Player.create(name: "Odsisseas Vlachodimos", age: 26, position:"GK", team_id:ben.id)

Player.create(name: "Zlatan Ibrahimović", age: 38, position:"Fwd", team_id:mil.id)
Player.create(name: "Ante Rebic", age: 26, position:"Mid", team_id:mil.id)
Player.create(name: "Theo Hernández", age: 31, position:"Def", team_id:mil.id)
Player.create(name: "Alessio Romagnoli", age: 31, position:"Def", team_id:mil.id)
Player.create(name: "Gianluigi Donnarruma", age: 31, position:"GK", team_id:mil.id)




