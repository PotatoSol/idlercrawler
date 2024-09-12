class_name Crawler extends CharacterBody3D

const CrawlerState = preload("res://Scripts/Characters/States/CrawlerState.gd").CrawlerState

var state: CrawlerState = CrawlerState.IDLE

var stats = {
	"Strength": 1, "Vigor": 1, 
	"Intelligence":1, "Wisdom": 1, 
	"Dexterity": 1, "Luck":1, 
	"Health":10, "Mana": 10,
	"Speed":10, "Gravity":-10
}

var commands = []

func get_next_command(): #Returns true if a valid command was found, false if not
	for comm in commands:
		if comm.is_valid():
			comm.execute()
			return true
			break
	return false
