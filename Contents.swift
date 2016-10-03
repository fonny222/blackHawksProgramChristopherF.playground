//: Playground - noun: a place where people can play

import UIKit

// declare dictionary variable

var teamMembers:Dictionary<Int, String> = [24:"Spencer Abbot", 15:"Artem Anisimov", 39:"Kyle Baun", 37:"Sam Carrick", 23:"Alexander DeBrincat", 11:"Andrew Desjardins", 82:"Alexandre Fortin", 38:"Ryan Hartman", 48:"Vincent Hinostroza", 81:"Marian Hossa", 62:"Luke Johnson", 88:"Patrick Kane", 67:"Tanner Kero", 58:"Graham Knott", 16:"Marcus Kruger", 26:"Pierre-Cedric Labrie", 28:"Martin Lundberg", 53:"Brandon Mashinter", 41:"Mark McNeill", 64:"Tyler Motte", 72:"Artemi Panarin", 14:"Richard Panik", 70:"Dennis Rasmussen", 8:"Nick Schmaltz", 19:"Jonathan Toews", 22:"Jordin Tootoo", 51:"Brian Campbell", 63:"Carl Dahlstrom", 42:"Gustav Forsling", 45:"Dillon Fournier", 56:"Erik Gustafsson", 4:"Niklas Hjalmarsson", 2:"Duncan Keith", 6:"Michal Kempny", 76:"Robin Norell", 17:"Ville Pokka", 32:"Michal Rozsival", 47:"Cameron Schilling", 7:"Brent Seabrook", 43:"Viktor Svedberg", 75:"Nolan Valleau", 57:"Trever van Riemsdyk", 60:"Mac Carruth", 50:"Corey Crawford", 33:"Scott Darling", 31:"Lars Johansson"]

// list of player names
var playerName = ["Spencer Abbot", "Artem Anisimov", "Kyle Baun", "Sam Carrick", "Alexander DeBrincat", "Andrew Desjardins", "Alexandre Fortin", "Ryan Hartman", "Vincent Hinostroza", "Marian Hossa", "Luke Johnson","Patrick Kane","Tanner Kero","Graham Knott","Marcus Kruger","Pierre-Cedric Labrie","Martin Lundberg","Brandon Mashinter","Mark McNeill","Tyler Motte","Artemi Panarin","Richard Panik","Dennis Rasmussen","Nick Schmaltz","Jonathan Toews","Jordin Tootoo","Brian Campbell","Carl Dahlstrom","Gustav Forsling","Dillon Fournier","Erik Gustafsson","Niklas Hjalmarsson","Duncan Keith","Michal Kempny","Robin Norell","Ville Pokka","Michal Rozsival","Cameron Schilling","Brent Seabrook","Viktor Svedberg","Nolan Valleau","Trever van Riemsdyk","Mac Carruth","Corey Crawford","Scott Darling","Lars Johansson"]

// list players countries
var playerCountry = ["Canada","Russia","Canada","Canada","USA","Canada","Canada","USA","USA","Slovakia","USA","USA","USA","Canada","Sweden","Canada","Sweden","Canada","Canada","USA","Russia","Slovakia","Sweden","USA","Canada","Canada","Canada","Sweden","Sweden","Canada","Sweden","Sweden","Canada","Czech Republic","Sweden","Finland","Czech Republic","USA","Canada","Sweden","USA","USA","USA","Canada","USA","Sweden"]

// Month variables
var monthBorn = ["April","May","May","February","December","July","February","September","April","January","September","November","July","January","May","December","June","September","February","March","October","February","July","February","April","February","May","January","June","June","March","June","July","September","February","June","September","October","April","May","November","July","March","December","December","July"]

// month counters for the case staments
var maxMonth = 0
var whatMonth:String
var jan:Int = 0
var feb:Int = 0
var march:Int = 0
var april:Int = 0
var may:Int = 0
var june:Int = 0
var july:Int = 0
var sept:Int = 0
var oct:Int = 0
var nov:Int = 0
var dec:Int = 0

// player height array feet
var heightFeet:[Double] = [5,6,6,6,5,6,6,6,5,6,5,5,6,6,6,6,6,6,6,5,5,6,6,6,6,5,5,6,5,6,6,6,6,6,5,6,6,6,6,6,6,6,6,6,6,6]
// player height array inches
var heightInch:[Double] = [9,4,2,0,7,1,0,0,9,1,11,11,0,3,0,3,0,4,2,9,11,1,3,0,2,9,10,4,11,2,0,3,1,0,11,0,1,2,3,8,1,2,2,2,6,1]
var feetTotal:Double = 0
var inchTotal:Double = 0
var totalHeightInch:Double
var averageHeight:Double

// years of player births
var birthYear:[Double] = [1988,1988,1992,1992,1997,1986,1997,1994,1994,1979,1994,1988,1992,1997,1990,1986,1990,1988,1993,1995,1991,1991,1990,1996,1988,1983,1979,1995,1996,1994,1992,1987,1983,1990,1995,1994,1978,1988,1985,1991,1992,1991,1992,1984,1988,1987]
var playerAge:[Double] = []
var totalAge:Double = 0
var averageAge:Double

// swap for bubble sort
var swap:Bool
var temp:Double
var tempName:String
var tempCountry:String
var counter = playerName.count




// loop through the dictionary**************************

print(" ")
print("Players and their Numbers")
print(" ")

for (key,value) in teamMembers{
    print(key,value)
}


print(" ")
print(" ")



// Average player ages**************************************

// this loops through the birthYear and player Age arrays
// it calculates their age and adds the age to the playerAge array
for var i = 0; i <= counter - 1; i += 1
{
    playerAge.append(2016 - birthYear[i])
    //print(playerAge[i])
}

//this calculates the average player age
for var i = 0; i <= counter - 1; i += 1
{
    totalAge = totalAge + playerAge[i]
}
averageAge = totalAge/46
print("The average Player age is:",averageAge)




//sort by players ages ***********************************************
//I had to make sure to sort each of the arrays that I'm displaying so they stay parallell

for i in 0 ..< counter - 1{
 
    for count in 0 ..< counter - 1
    {
        if(playerAge[count] > playerAge[count+1])
        {
            temp = playerAge[count]
            tempName = playerName[count]
            tempCountry = playerCountry[count]
            playerAge[count] = playerAge[count + 1]
            playerName[count] = playerName[count + 1]
            playerCountry[count] = playerCountry[count + 1]
            playerAge[count + 1] = temp
            playerName[count + 1] = tempName
            playerCountry[count + 1] = tempCountry
        }
    }
}

// this displays the sorted arrays for player age
print(" ")
print("Players Sorted by Age")
print(" ")
for i in 0 ..< counter - 1
{
    print(playerName[i],playerAge[i])
}


// Sorted by country**********************************************

// this bubble sorts the country and player name arrays
// keeping them in parallell
for i in 0 ..< counter - 1
{
    for count in 0 ..< counter - 1
    {
        if(playerCountry[count] > playerCountry[count + 1]){
        tempCountry = playerCountry[count]
        tempName = playerName[count]
        playerCountry[count] = playerCountry[count + 1]
        playerName[count] = playerName[count + 1]
        playerCountry[count + 1] = tempCountry
        playerName[count + 1] = tempName
        }
    }
}

// displays the players and countries sorted
print(" ")
print(" ")
print("Players grouped by Country")
print(" ")
for i in 0 ..< counter - 1
{
    print(playerName[i],playerCountry[i])
}



// Average player heights **********************************
//this adds the feet totals from the heightFeet array by looping through the array

for var i = 0; i <= counter - 1; i += 1
{
    feetTotal = feetTotal + heightFeet[i]
}

// this adds the inch totals from heightInch array by looping through the array
for var i = 0; i <= counter - 1; i += 1
{
    inchTotal = inchTotal + heightInch[i]
}

// the following converts feet into inches then adds the inchTotal variable to it
// then it divides the total inches by the total number of players. then this number is divided by 12
// inchds to get the average height

totalHeightInch = ((feetTotal * 12) + inchTotal)
averageHeight = (totalHeightInch / 46) / 12

print(" ")
print(" ")
print("The Average Player Height is:",averageHeight," Feet")



// Month players born **********************************
// this checks the monthBorn array for each match for the proper months it adds 1 to the 
// associated varaible.

for var i = 0; i <= counter - 1; i += 1
{
    switch monthBorn[i] {
        
    case "January":
        jan += 1
        break
    
    case "February":
        feb += 1
        break
        
    case "March":
        march += 1
        break
        
    case "April":
        april += 1
        break
        
    case "May":
        may += 1
        break
        
    case "June":
        june += 1
        break
        
    case "July":
        july += 1
        break
        
    case "Septemeber":
        sept += 1
        break
        
    case "October":
        oct += 1
        break
        
    case "November":
        nov += 1
        break
        
    case "December":
        dec += 1
        break
        
    default:
        var blank = 1+1
        
        
        
    }
    
}

// determine which month has the most  birthdays
// the following checks to see which variable is larger by assigning a variable to max
// it then compares the next variable to check to the max if it is larger then it becomes the max
// it also sets a variable to the string with the name of the month that had the largest int

maxMonth = jan
whatMonth = ""
if (feb > maxMonth){
    
    maxMonth = feb
    whatMonth = "February"
}
if (march > maxMonth){
    
    maxMonth = march
    whatMonth = "March"
}
if (april > maxMonth){
    
    maxMonth = april
    whatMonth = "April"
}
if (may > maxMonth){
    
    maxMonth = may
    whatMonth = "May"
}
if (june > maxMonth){
    
    maxMonth = june
    whatMonth = "June"
}
if (july > maxMonth){
    
    maxMonth = july
    whatMonth = "July"
}
if (sept > maxMonth){
    
    maxMonth = sept
    whatMonth = "Septemeber"
}
if (oct > maxMonth){
    
    maxMonth = oct
    whatMonth = "October"
}
if (nov > maxMonth){
    
    maxMonth = nov
    whatMonth = "November"
}
if (dec > maxMonth){
    
    maxMonth = dec
    whatMonth = "December"
}

print(" ")
print(" ")
print("The month with the most player Birthdays is: ", whatMonth)





