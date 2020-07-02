--[[ DUMPED USING COMPOSER DEVIL ]]--
local curWatchingPeds = {}
local relationshipTypes = {
"PLAYER",
"COP",
"MISSION2",
"MISSION3",
"MISSION4",
"MISSION5",
"MISSION6",
"MISSION7",
"MISSION8",
}

Citizen.CreateThread(function()
	while true do
	Wait(600)
		for _, group in ipairs(relationshipTypes) do
		  if group == "COP" then
			SetRelationshipBetweenGroups(3, GetHashKey('PLAYER'),GetHashKey(group))
			SetRelationshipBetweenGroups(3, GetHashKey(group), GetHashKey('PLAYER'))
			SetRelationshipBetweenGroups(0, GetHashKey('MISSION2'),GetHashKey(group))
			SetRelationshipBetweenGroups(0, GetHashKey(group), GetHashKey('MISSION2'))
  
		  else
			SetRelationshipBetweenGroups(0, GetHashKey('PLAYER'),GetHashKey(group))
			SetRelationshipBetweenGroups(0, GetHashKey(group), GetHashKey('PLAYER'))
			SetRelationshipBetweenGroups(0, GetHashKey('MISSION2'),GetHashKey(group))
			SetRelationshipBetweenGroups(0, GetHashKey(group), GetHashKey('MISSION2'))
		  end  
		SetRelationshipBetweenGroups(5, GetHashKey(group), GetHashKey('MISSION8'))
	  end
  
  
  
  
  --WEST SIDE
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION4"), GetHashKey("AMBIENT_GANG_WEICHENG"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_WEICHENG"), GetHashKey("MISSION4"))
  
  -- MEDIC / POLICE WEST SIDE
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_WEICHENG"), GetHashKey("MISSION2"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), GetHashKey("AMBIENT_GANG_WEICHENG"))
  
  
  
  
  
  --CENTRAL
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION5"), GetHashKey("AMBIENT_GANG_FAMILY"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_FAMILY"), GetHashKey("MISSION5"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION5"), GetHashKey("AMBIENT_GANG_BALLAS"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_BALLAS"), GetHashKey("MISSION5"))
  
  -- MEDIC / POLICE CENTRAL
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_BALLAS"), GetHashKey("MISSION2"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), GetHashKey("AMBIENT_GANG_BALLAS"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_FAMILY"), GetHashKey("MISSION2"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), GetHashKey("AMBIENT_GANG_FAMILY"))
  
  
  
  
  
  
  --EAST SIDE
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION6"), GetHashKey("AMBIENT_GANG_SALVA"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_SALVA"), GetHashKey("MISSION6"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION6"), GetHashKey("AMBIENT_GANG_MEXICAN"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MEXICAN"), GetHashKey("MISSION6"))
  
  -- MEDIC / POLICE EAST SIDE
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_SALVA"), GetHashKey("MISSION2"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), GetHashKey("AMBIENT_GANG_SALVA"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), GetHashKey("AMBIENT_GANG_MEXICAN"))
	  SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MEXICAN"), GetHashKey("MISSION2"))
  
  
	  SetRelationshipBetweenGroups(1, -86095805, GetHashKey("MISSION2"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), -86095805)
  
	  SetRelationshipBetweenGroups(1,1191392768, GetHashKey("MISSION2"))
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"),1191392768)
	  
	  SetRelationshipBetweenGroups(1, GetHashKey("MISSION2"), 45677184)
	  SetRelationshipBetweenGroups(1, 45677184, GetHashKey("MISSION2"))
  
  
  
  
	  SetRelationshipBetweenGroups(3, GetHashKey('PLAYER'), GetHashKey('MISSION7'))
	  SetRelationshipBetweenGroups(3, GetHashKey('MISSION7'), GetHashKey('PLAYER'))
  
	  SetRelationshipBetweenGroups(0, GetHashKey('MISSION7'), GetHashKey('COP'))
	  SetRelationshipBetweenGroups(0, GetHashKey('COP'), GetHashKey('MISSION7'))
  
	  SetRelationshipBetweenGroups(0, GetHashKey('MISSION2'), GetHashKey('MISSION7'))
	  SetRelationshipBetweenGroups(0, GetHashKey('MISSION7'), GetHashKey('MISSION2'))
  
	  SetRelationshipBetweenGroups(0, GetHashKey('MISSION7'), GetHashKey('MISSION7'))
  
	  SetRelationshipBetweenGroups(3, GetHashKey('COP'),GetHashKey('PLAYER'))
	  SetRelationshipBetweenGroups(3, GetHashKey('PLAYER'), GetHashKey('COP'))
  
	end
end)
  
--[[ DUMPED USING COMPOSER DEVIL ]]--