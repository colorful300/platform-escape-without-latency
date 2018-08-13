syncDummyIdTriggerPoint=1697656883
--e003
syncDummyIdOrderUnit=1697656884
--e004
syncDummyIdOrderId=1697656885
--e005
syncDummyIdTriggerImmediate=1697656886
--e006

--init
syncDummyTriggerPoint=jass.CreateUnit(jass.Player(15),syncDummyIdTriggerPoint,0.0,0.0,0.0)
jass.ShowUnit(syncDummyTriggerPoint,false)
syncDummyOrderUnit=jass.CreateUnit(jass.Player(15),syncDummyIdOrderUnit,0.0,0.0,0.0)
jass.ShowUnit(syncDummyOrderUnit,false)
syncDummyOrderId=jass.CreateUnit(jass.Player(15),syncDummyIdOrderId,0.0,0.0,0.0)
jass.ShowUnit(syncDummyOrderId,false)
syncDummyTriggerImmediate=jass.CreateUnit(jass.Player(15),syncDummyIdTriggerImmediate,0.0,0.0,0.0)
jass.ShowUnit(syncDummyTriggerImmediate,false)

--Location Sync Trigger
pointTrigger=jass.CreateTrigger()
jass.SetUnitUserData(syncDummyTriggerPoint,jass.GetHandleId(pointTrigger))
jass.TriggerAddCondition(pointTrigger,jass.Condition(function()
    local orderUnit=int2Unit(jass.GetUnitUserData(syncDummyOrderUnit))
    if(jass.GetLocalPlayer()==jass.GetOwningPlayer(orderUnit))then
        message.order_point(jass.GetUnitUserData(syncDummyOrderId),jass.GetUnitX(orderUnit),jass.GetUnitY(orderUnit))
    end
    return false
end))

--Event Sync Trigger
immediateTrigger=jass.CreateTrigger()
jass.SetUnitUserData(syncDummyTriggerImmediate,jass.GetHandleId(immediateTrigger))
jass.TriggerAddCondition(immediateTrigger,jass.Condition(function()
    local orderUnit=int2Unit(jass.GetUnitUserData(syncDummyOrderUnit))
    if(jass.GetLocalPlayer()==jass.GetOwningPlayer(orderUnit))then
        message.order_immediate(jass.GetUnitUserData(syncDummyOrderId))
    end
    return false
end))