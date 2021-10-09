enemyPlanes = {'Z1_MIG29_1', 'Z1_MIG21_1', 
'Z2_SU27_1', 'Z3_MIG29_1', 'Z3_SU27_1', 'Z4_SU27_2', 'Z4_SU27_1', 'Z5_MIG29_1', 'Z5_SU33_1'}

for i, v in ipairs(enemyPlanes) do
  SPAWN:New(v)
    :InitKeepUnitNames(false)
    :InitLimit(9, 1800)
    :InitDelayOff()
    :InitSkill("Random")
    :InitRepeatOnLanding()
    :OnSpawnGroup(
      function(group)
        trigger.action
        .outText('Group (' .. group.GroupName .. ') with skill level: ' .. group:GetSkill() .. ' has spawned.', 10)
      end
    )
    :SpawnScheduled(600, .3)
end
