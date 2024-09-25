class_name Trigger_target_nearest_enemy extends Trigger
#This will only find the nearest enemy, if confused, should target nearest crawler

var user: Crawler

func set_user(input_user: Crawler):
  user = input_user

func find_closest_enemy():
  var enemy_list = get_tree().get_nodes_in_group("enemy")
  if enemy_list.size() == 0:
    return false
  var closest = enemy_list[0]
  for nme in enemy_list:
    if user.distance_to(nme) < user.distance_to(closest):
      closest = nme

  return false

func is_valid():
  if find_closest_enemy():
    return true
  else: return false