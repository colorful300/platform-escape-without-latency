--require 'jass.console'.enable=true
jass = require 'jass.common'
message = require 'jass.message'

keyhookDummyCodeId=1697656882
--e002
keyhookDummyTypeId=1697656880
--e000
keyhookDummyHandleId=1697656881
--e001

keyhookDummyType=jass.CreateUnit(jass.Player(15),keyhookDummyTypeId,0.0,0.0,0.0)
keyhookDummyCode=jass.CreateUnit(jass.Player(15),keyhookDummyCodeId,0.0,0.0,0.0)
keyhookDummyHandle=jass.CreateUnit(jass.Player(15),keyhookDummyHandleId,0.0,0.0,0.0)
hashTable=jass.InitHashtable()
callbackHandle=0
callbackTrigger=nil

jass.ShowUnit(keyhookDummyType,false)
jass.ShowUnit(keyhookDummyCode,false)
jass.ShowUnit(keyhookDummyHandle,false)

function int2Trigger(id)
    jass.SaveFogStateHandle(hashTable,0,0,jass.ConvertFogState(id))
    return jass.LoadTriggerHandle(hashTable,0,0)
end

function int2Unit(id)
    jass.SaveFogStateHandle(hashTable,0,0,jass.ConvertFogState(id))
    return jass.LoadUnitHandle(hashTable,0,0)
end

function message.hook(msg)
    if(msg.type=='key_down')then
        jass.SetUnitUserData(keyhookDummyType,1)
    elseif(msg.type=='key_up')then
        jass.SetUnitUserData(keyhookDummyType,2)
    else
        return true
    end
    jass.SetUnitUserData(keyhookDummyCode,msg.code)
    if(callbackHandle~=0)then
        jass.TriggerEvaluate(callbackTrigger)
    else
        callbackHandle=jass.GetUnitUserData(keyhookDummyHandle)
        if(callbackHandle~=0)then
            callbackTrigger=int2Trigger(callbackHandle)
            jass.TriggerEvaluate(callbackTrigger)
        end
    end
    return true
end