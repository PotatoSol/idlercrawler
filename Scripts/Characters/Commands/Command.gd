class_name Command

var trigger: Trigger
var action: Action
var user: Crawler

func set_trigger(input_trigger: Trigger):
	trigger = input_trigger

func set_action(input_action: Action):
	action = input_action

func is_valid():
	if(trigger.is_valid() && action.is_valid()):
		return true
	else: return false

func execute_action():
	action.execute_action()

func _init(input_trigger: Trigger, input_action: Action, input_user: Crawler):
	trigger = input_trigger
	action = input_action
	user = input_user
