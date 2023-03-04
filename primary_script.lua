local PlaneTable = {
	"Opp-MiG29A",
	"Opp-MiG29G",
	"Opp-Su30MKA",
	"Opp-Su27",
	"Opp-Su33",
	"Opp-MiG21",
	"Opp-F16C",
	"Opp-F5E3",
	"Opp-F14A",
	"Opp-F14B",
	"Opp-F15C",
	"Opp-F15EX",
	"Opp-F86",
	"Opp-FA18",
	"Opp-JF17",
	"Opp-M2000C",
	"Opp-MiG15",
	"Opp-MiG19",
	"Opp-MiG29S",
	"Opp-MiG31",
	"Opp-F1CE",
	"Opp-F1EE",
	"Opp-Su57",
	"Opp-J11A"
}

local VehicleTable = {
	"Opp-Vehicles",
	"Opp-Vehicles-1",
	"Opp-Vehicles-2",
	"Opp-Vehicles-3",
	"Opp-Vehicles-4",
}

local ZoneTable = { 
	ZONE:New("Zone-1"), 
	ZONE:New("Zone-2"),
	ZONE:New("Zone-3"),
	ZONE:New("Zone-4"),
	ZONE:New("Zone-5"),
	ZONE:New("Zone-6"),
	ZONE:New("Zone-7")
}

local VehicleZoneTable = {
	ZONE:New("Vehicle-Zone-1"),
	ZONE:New("Vehicle-Zone-2"),
	ZONE:New("Vehicle-Zone-3"),
	ZONE:New("Vehicle-Zone-4"),
}

SPAWN:New("Opp-Plane")
	:InitKeepUnitNames(false)
	:InitLimit(10, 200)	
	:InitRandomizeRoute(0, 1, 25, 10000)
	:InitRandomizeTemplate(PlaneTable)
	:InitRandomizeZones(ZoneTable)
	:InitSkill("Random")
	:InitRepeatOnLanding()
	:SpawnScheduled(30, 0.5)

SPAWN:New("Opp-Vehicles")
	:InitKeepUnitNames(false)
	:InitLimit(4, 200)	
	:InitRandomizeRoute(0, 1, 9, 5000)
	:InitRandomizeTemplate(VehicleTable)
	:InitRandomizeZones(VehicleZoneTable)
	:InitSkill("Random")
	:SpawnScheduled(120, 0.5)