extends Resource

# Define character states
enum CrawlerState {
	IDLE,
	ATTACKING,
	CHANNELING,
	CASTING,
	STUNNED,
	SLEEPING,
	COOLDOWN
}

# Current state of the character
var current_state: CrawlerState = CrawlerState.IDLE

# Function to transition to a new state
func change_state(new_state: CrawlerState):
	if current_state != new_state:
		current_state = new_state
		_on_state_changed(current_state)

# Handle logic when the state changes
func _on_state_changed(state: CrawlerState):
	match state:
		CrawlerState.IDLE:
			# Add any behavior related to being idle (e.g., animation)
			pass
		CrawlerState.ATTACKING:
			# Add behavior for attacking (e.g., attack logic or animation)
			pass
		CrawlerState.CHANNELING:
			# Add channeling logic
			pass
		CrawlerState.CASTING:
			# Add casting logic
			pass
		CrawlerState.STUNNED:
			# Add stunned behavior
			pass
		CrawlerState.SLEEPING:
			# Add sleep behavior
			pass

func return_state():
	return current_state;
