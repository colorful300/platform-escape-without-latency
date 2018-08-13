globals
//globals from JapiConstantLib:
constant boolean LIBRARY_JapiConstantLib=true
integer array i_1
integer array i_2
integer array i_3
integer array i_4
integer array i_5
integer array i_6
integer array i_7
integer array i_8
integer array i_9
integer array i_10
integer array i_11
integer array i_12
integer array i_13
integer array i_14
integer array i_15
integer array i_16
integer array i_17
integer array i_18
integer array i_19
integer array i_20
integer array i_21
integer array i_22
integer array i_23
integer array i_24
integer array i_25
integer array i_26
integer array i_27
integer array i_28
integer array i_29
integer array i_30
integer array i_31
integer array i_32

//endglobals from JapiConstantLib
//globals from japi:
constant boolean LIBRARY_japi=true
hashtable japi_ht=InitHashtable()
integer japi___key=StringHash("jass")
//endglobals from japi
//globals from LocalActionLib:
constant boolean LIBRARY_LocalActionLib=true
constant hashtable LocalActionLib__ht=japi_ht
constant integer LocalActionLib__key=StringHash("jass")
//endglobals from LocalActionLib
//globals from d3d:
constant boolean LIBRARY_d3d=true
constant hashtable d3d__ht=japi_ht
constant integer d3d__key=StringHash("jass")
//endglobals from d3d
    // Generated
trigger gg_trg_japi_________u= null
trigger gg_trg____japi___u= null
trigger gg_trg____d3d___u= null
trigger gg_trg_______japi___u= null


//JASSHelper struct globals:
constant integer si__LOGFONT=1
integer si__LOGFONT_F=0
integer si__LOGFONT_I=0
integer array si__LOGFONT_V
integer array s__LOGFONT_font
trigger st__LOGFONT_onDestroy
integer f__arg_this

endglobals
    native SetHeroLevels takes code f returns nothing 
    native TeleportCaptain takes real x, real y returns nothing
    native GetUnitGoldCost takes integer unitid returns integer


//Generated method caller for LOGFONT.onDestroy
function sc__LOGFONT_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__LOGFONT_onDestroy)
endfunction

//Generated allocator of LOGFONT
function s__LOGFONT__allocate takes nothing returns integer
 local integer this=si__LOGFONT_F
    if (this!=0) then
        set si__LOGFONT_F=si__LOGFONT_V[this]
    else
        set si__LOGFONT_I=si__LOGFONT_I+1
        set this=si__LOGFONT_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__LOGFONT_V[this]=-1
 return this
endfunction

//Generated destructor of LOGFONT
function sc__LOGFONT_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__LOGFONT_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__LOGFONT_onDestroy)
    set si__LOGFONT_V[this]=si__LOGFONT_F
    set si__LOGFONT_F=this
endfunction

//library JapiConstantLib:
    function JapiConstantLib_init_memory takes nothing returns nothing
         set i_1[8191]=0
 set i_2[8191]=0
 set i_3[8191]=0
 set i_4[8191]=0
 set i_5[8191]=0
 set i_6[8191]=0
 set i_7[8191]=0
 set i_8[8191]=0
 set i_9[8191]=0
 set i_10[8191]=0
 set i_11[8191]=0
 set i_12[8191]=0
 set i_13[8191]=0
 set i_14[8191]=0
 set i_15[8191]=0
 set i_16[8191]=0
 set i_17[8191]=0
 set i_18[8191]=0
 set i_19[8191]=0
 set i_20[8191]=0
 set i_21[8191]=0
 set i_22[8191]=0
 set i_23[8191]=0
 set i_24[8191]=0
 set i_25[8191]=0
 set i_26[8191]=0
 set i_27[8191]=0
 set i_28[8191]=0
 set i_29[8191]=0
 set i_30[8191]=0
 set i_31[8191]=0
 set i_32[8191]=0

    endfunction
    function JapiConstantLib_init takes nothing returns integer
        call ExecuteFunc("JapiConstantLib_init_memory")
        return 1
    endfunction

//library JapiConstantLib ends
//library japi:



    
    
     function Call takes string str returns nothing
        call UnitId(str)
    endfunction
    //获取鼠标在地图中的x轴
     function GetMouseX takes nothing returns real
        call SaveStr(japi_ht, japi___key, 0, "()R")
        call Call("GetMouseX")
        return LoadReal(japi_ht, japi___key, 0)
    endfunction
    //获取鼠标在地图中的y轴
     function GetMouseY takes nothing returns real
        call SaveStr(japi_ht, japi___key, 0, "()R")
        call Call("GetMouseY")
        return LoadReal(japi_ht, japi___key, 0)
    endfunction
    
    
    
    
    //==========================================================================
     function EXGetUnitAbility takes unit u,integer abilityId returns integer
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(u))
        call SaveInteger(japi_ht, japi___key, 2, abilityId)
        call SaveStr(japi_ht, japi___key, 0, "(II)I")
        call Call("EXGetUnitAbility")
        return LoadInteger(japi_ht, japi___key, 0)
    endfunction
    
    // yd japi ==================================================================
    // 技能----------------------------------------------------
    
    ///<summary>技能属性 [JAPI]</summary>
  function YDWEGetUnitAbilityState takes unit u,integer abilcode,integer data_type returns real
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, data_type)
        call SaveStr(japi_ht, japi___key, 0, "(II)R")
        call Call("EXGetAbilityState")
		return LoadReal(japi_ht, japi___key, 0)
	endfunction
	///<summary>技能数据 (整数) [JAPI]</summary>
  function YDWEGetUnitAbilityDataInteger takes unit u,integer abilcode,integer level,integer data_type returns integer
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, level)
        call SaveInteger(japi_ht, japi___key, 3, data_type)
        call SaveStr(japi_ht, japi___key, 0, "(III)I")
        call Call("EXGetAbilityDataInteger")
		return LoadInteger(japi_ht, japi___key, 0)
	endfunction
	///<summary>技能数据 (实数) [JAPI]</summary>
  function YDWEGetUnitAbilityDataReal takes unit u,integer abilcode,integer level,integer data_type returns real
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, level)
        call SaveInteger(japi_ht, japi___key, 3, data_type)
        call SaveStr(japi_ht, japi___key, 0, "(III)R")
        call Call("EXGetAbilityDataReal")
		return LoadReal(japi_ht, japi___key, 0)
    endfunction
	///<summary>技能数据 (字符串) [JAPI]</summary>
  function YDWEGetUnitAbilityDataString takes unit u,integer abilcode,integer level,integer data_type returns string
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, level)
        call SaveInteger(japi_ht, japi___key, 3, data_type)
        call SaveStr(japi_ht, japi___key, 0, "(III)S")
        call Call("EXGetAbilityDataString")
		return LoadStr(japi_ht, japi___key, 0)
	endfunction
	///<summary>设置技能属性 [JAPI]</summary>
  function YDWESetUnitAbilityState takes unit u,integer abilcode,integer data_type,real value returns nothing
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, data_type)
        call SaveReal(japi_ht, japi___key, 3, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIR)V")
        call Call("EXSetAbilityState")
    endfunction
	///<summary>设置技能数据 (整数) [JAPI]</summary>
  function YDWESetUnitAbilityDataInteger takes unit u,integer abilcode,integer level,integer data_type,integer value returns nothing
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, level)
        call SaveInteger(japi_ht, japi___key, 3, data_type)
        call SaveInteger(japi_ht, japi___key, 4, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIII)V")
        call Call("EXSetAbilityDataInteger")
    endfunction
	///<summary>设置技能数据 (实数) [JAPI]</summary>
  function YDWESetUnitAbilityDataReal takes unit u,integer abilcode,integer level,integer data_type,real value returns nothing
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, level)
        call SaveInteger(japi_ht, japi___key, 3, data_type)
        call SaveReal(japi_ht, japi___key, 4, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIIR)V")
        call Call("EXSetAbilityDataReal")
    endfunction
	///<summary>设置技能数据 (字符串) [JAPI]</summary>
  function YDWESetUnitAbilityDataString takes unit u,integer abilcode,integer level,integer data_type,string value returns nothing
        call SaveInteger(japi_ht, japi___key, 1, EXGetUnitAbility(u , abilcode))
        call SaveInteger(japi_ht, japi___key, 2, level)
        call SaveInteger(japi_ht, japi___key, 3, data_type)
        call SaveStr(japi_ht, japi___key, 4, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIIS)V")
        call Call("EXSetAbilityDataString")
    endfunction
	
    
    //设置技能变身数据A
     function EXSetAbilityAEmeDataA takes integer ability_handle,integer value returns boolean
        call SaveInteger(japi_ht, japi___key, 1, ability_handle)
        call SaveInteger(japi_ht, japi___key, 2, value)
        call SaveStr(japi_ht, japi___key, 0, "(II)B")
        call Call("EXSetAbilityAEmeDataA")
        return LoadBoolean(japi_ht, japi___key, 0)
    endfunction
    
    //单位变身
     function YDWEUnitTransform takes unit u,integer abilcode,integer targetid returns nothing
		call UnitAddAbility(u, abilcode)
		call YDWESetUnitAbilityDataInteger(u , abilcode , 1 , 117 , GetUnitTypeId(u))
		call EXSetAbilityAEmeDataA(EXGetUnitAbility(u , abilcode) , GetUnitTypeId(u))
		call UnitRemoveAbility(u, abilcode)
		call UnitAddAbility(u, abilcode)
		call EXSetAbilityAEmeDataA(EXGetUnitAbility(u , abilcode) , targetid)
		call UnitRemoveAbility(u, abilcode)
	endfunction
    
    // 单位-------------------------------------------------------
    
    //暂停单位
     function EXPauseUnit takes unit unit_handle,boolean flag returns nothing
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(unit_handle))
        call SaveBoolean(japi_ht, japi___key, 2, flag)
        call SaveStr(japi_ht, japi___key, 0, "(IB)V")
        call Call("EXPauseUnit")
    endfunction
    
    //获取单位字符串
     function EXGetUnitString takes integer unitcode,integer Type returns string
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveStr(japi_ht, japi___key, 0, "(II)S")
        call Call("EXGetUnitString")
        return LoadStr(japi_ht, japi___key, 0)
    endfunction
    
       //设置单位字符串
     function EXSetUnitString takes integer unitcode,integer Type,string value returns boolean
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveStr(japi_ht, japi___key, 3, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIS)B")
        call Call("EXSetUnitString")
        return LoadBoolean(japi_ht, japi___key, 0)
    endfunction
    
    //获取单位实数
     function EXGetUnitReal takes integer unitcode,integer Type returns real
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveStr(japi_ht, japi___key, 0, "(II)R")
        call Call("EXGetUnitReal")
        return LoadReal(japi_ht, japi___key, 0)
    endfunction
    
    //设置单位实数
     function EXSetUnitReal takes integer unitcode,integer Type,real value returns boolean
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveReal(japi_ht, japi___key, 3, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIR)B")
        call Call("EXSetUnitReal")
        return LoadBoolean(japi_ht, japi___key, 0)
    endfunction
    
    
    //获取单位整数
     function EXGetUnitInteger takes integer unitcode,integer Type returns integer
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveStr(japi_ht, japi___key, 0, "(II)I")
        call Call("EXGetUnitInteger")
        return LoadInteger(japi_ht, japi___key, 0)
    endfunction
    
    //设置单位整数
     function EXSetUnitInteger takes integer unitcode,integer Type,integer value returns boolean
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveInteger(japi_ht, japi___key, 3, value)
        call SaveStr(japi_ht, japi___key, 0, "(III)B")
        call Call("EXSetUnitInteger")
        return LoadBoolean(japi_ht, japi___key, 0)
    endfunction
    
        //获取单位数组字符串
     function EXGetUnitArrayString takes integer unitcode,integer Type,integer index returns string
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveInteger(japi_ht, japi___key, 3, index)
        call SaveStr(japi_ht, japi___key, 0, "(III)S")
        call Call("EXGetUnitArrayString")
        return LoadStr(japi_ht, japi___key, 0)
    endfunction
    
    //设置单位数组字符串
     function EXSetUnitArrayString takes integer unitcode,integer Type,integer index,string value returns boolean
        call SaveInteger(japi_ht, japi___key, 1, unitcode)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveInteger(japi_ht, japi___key, 3, index)
        call SaveStr(japi_ht, japi___key, 4, value)
        call SaveStr(japi_ht, japi___key, 0, "(IIIS)B")
        call Call("EXSetUnitArrayString")
        return LoadBoolean(japi_ht, japi___key, 0)
    endfunction
    //设置单位面向角度(立即转向)
     function EXSetUnitFacing takes unit unit_handle,real angle returns nothing
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(unit_handle))
        call SaveReal(japi_ht, japi___key, 2, angle)
        call SaveStr(japi_ht, japi___key, 0, "(IR)V")
        call Call("EXSetUnitFacing")
    endfunction
    
    //设置单位碰撞类型
     function EXSetUnitCollisionType takes boolean enable,unit unit_handle,integer Type returns nothing
        call SaveBoolean(japi_ht, japi___key, 1, enable)
        call SaveInteger(japi_ht, japi___key, 2, GetHandleId(unit_handle))
        call SaveInteger(japi_ht, japi___key, 3, Type)
        call SaveStr(japi_ht, japi___key, 0, "(BII)V")
        call Call("EXSetUnitCollisionType")
    endfunction
    
    //设置单位移动类型
     function EXSetUnitMoveType takes unit unit_handle,integer Type returns nothing
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(unit_handle))
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveStr(japi_ht, japi___key, 0, "(II)V")
        call Call("EXSetUnitMoveType")
    endfunction
    
    //单位添加眩晕
     function YDWEUnitAddStun takes unit u returns nothing
		call EXPauseUnit(u , true)
	endfunction
    
    //单位删除眩晕
  function YDWEUnitRemoveStun takes unit u returns nothing
		call EXPauseUnit(u , false)
	endfunction
    
    //获取伤害数据
     function EXGetEventDamageData takes integer Type returns integer
        //call SaveInteger(ht,key,1,Type)
        //call SaveStr(ht,key,0,"(I)I")
        //call Call("EXGetEventDamageData")
        //return LoadInteger(ht,key,0)
        return GetUnitGoldCost(Type)
    endfunction
	
    //设置伤害
     function EXSetEventDamage takes real Damage returns boolean
        //call SaveReal(ht,key,1,Damage)
        //call SaveStr(ht,key,0,"(R)B")
        //call Call("EXSetEventDamage")
        //return LoadBoolean(ht,key,0)
        call TeleportCaptain(Damage, 0.00)
        return true
    endfunction
    
    //判断是否是物理伤害
     function YDWEIsEventPhysicalDamage takes nothing returns boolean
		return 0 != EXGetEventDamageData(1)
	endfunction
    //判断是否是攻击伤害
  function YDWEIsEventAttackDamage takes nothing returns boolean
		return 0 != EXGetEventDamageData(2)
	endfunction
	
    //判断是否是范围伤害
  function YDWEIsEventRangedDamage takes nothing returns boolean
		return 0 != EXGetEventDamageData(3)
	endfunction
	
    //判断伤害类型
  function YDWEIsEventDamageType takes damagetype damageType returns boolean
		return damageType == ConvertDamageType(EXGetEventDamageData(4))
	endfunction
    
    //判断武器类型
  function YDWEIsEventWeaponType takes weapontype weaponType returns boolean
		return weaponType == ConvertWeaponType(EXGetEventDamageData(5))
	endfunction
	
    //判断攻击类型
  function YDWEIsEventAttackType takes attacktype attackType returns boolean
		return attackType == ConvertAttackType(EXGetEventDamageData(6))
	endfunction
	//设置伤害
  function YDWESetEventDamage takes real amount returns boolean
		return EXSetEventDamage(amount)
	endfunction
    
    // 物品----------------------------------------------------
    
    ///<summary>设置物品数据 (字符串) [JAPI]</summary>
     function YDWESetItemDataString takes integer ItemTypeId,integer Type,string Value returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IIS)V")
        call SaveInteger(japi_ht, japi___key, 1, ItemTypeId)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call SaveStr(japi_ht, japi___key, 3, Value)
        call Call("EXSetItemDataString")
    endfunction
    ///<summary>获取物品数据 (字符串) [JAPI]</summary>
     function YDWEGetItemDataString takes integer ItemTypeId,integer Type returns string
        call SaveStr(japi_ht, japi___key, 0, "(II)S")
        call SaveInteger(japi_ht, japi___key, 1, ItemTypeId)
        call SaveInteger(japi_ht, japi___key, 2, Type)
        call Call("EXGetItemDataString")
        return LoadStr(japi_ht, japi___key, 0)
    endfunction
    
    //特效--------------------------------------------------------
    
    ///<summary>设置特效坐标 [JAPI]</summary>
     function EXSetEffectXY takes effect Handle,real x,real y returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IRR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, x)
        call SaveReal(japi_ht, japi___key, 3, y)
        call Call("EXSetEffectXY")
    endfunction
    
    ///<summary>设置特效Z轴 [JAPI]</summary>
     function EXSetEffectZ takes effect Handle,real z returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IRR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, z)
		call Call("EXSetEffectZ")
	endfunction
    
    ///<summary>获取特效X轴 [JAPI]</summary>
     function EXGetEffectX takes effect Handle returns real
        call SaveStr(japi_ht, japi___key, 0, "(I)R")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXGetEffectX")
        return LoadReal(japi_ht, japi___key, 0)
	endfunction
    
    ///<summary>获取特效Y轴 [JAPI]</summary>
  function EXGetEffectY takes effect Handle returns real
        call SaveStr(japi_ht, japi___key, 0, "(I)R")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXGetEffectY")
        return LoadReal(japi_ht, japi___key, 0)
	endfunction
    
    ///<summary>获取特效Z轴 [JAPI]</summary>
  function EXGetEffectZ takes effect Handle returns real
        call SaveStr(japi_ht, japi___key, 0, "(I)R")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXGetEffectZ")
		return LoadReal(japi_ht, japi___key, 0)
	endfunction
    
    ///<summary>设置特效尺寸 [JAPI]</summary>
  function EXSetEffectSize takes effect Handle,real size returns nothing
		call SaveStr(japi_ht, japi___key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, size)
        call Call("EXSetEffectSize")
	endfunction
    
    ///<summary>获取特效尺寸 [JAPI]</summary>
  function EXGetEffectSize takes effect Handle returns real
        call SaveStr(japi_ht, japi___key, 0, "(I)R")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXGetEffectSize")
		return LoadReal(japi_ht, japi___key, 0)
	endfunction
    
    ///<summary>设置特效X旋转轴 [JAPI]</summary>
  function EXEffectMatRotateX takes effect Handle,real x returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, x)
        call Call("EXEffectMatRotateX")
	endfunction
    
    ///<summary>设置特效Y旋转轴 [JAPI]</summary>
  function EXEffectMatRotateY takes effect Handle,real y returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, y)
        call Call("EXEffectMatRotateY")
	endfunction
    
    ///<summary>设置特效Z旋转轴 [JAPI]</summary>
  function EXEffectMatRotateZ takes effect Handle,real z returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, z)
        call Call("EXEffectMatRotateZ")
	endfunction
    
    ///<summary>设置特效比例 [JAPI]</summary>
  function EXEffectMatScale takes effect Handle,real x,real y,real z returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IRRR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, x)
        call SaveReal(japi_ht, japi___key, 3, y)
        call SaveReal(japi_ht, japi___key, 4, z)
        call Call("EXEffectMatScale")
	endfunction
    
    ///<summary>设置特效重置 [JAPI]</summary>
  function EXEffectMatReset takes effect Handle returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(I)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXEffectMatReset")
	endfunction
    
    ///<summary>设置特效速率 [JAPI]</summary>
  function EXSetEffectSpeed takes effect Handle,real speed returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, speed)
        call Call("EXSetEffectSpeed")
	endfunction
    
    ///<summary>设置可追踪物坐标 [JAPI]</summary>
     function EXSetTrackableXY takes trackable Handle,real x,real y returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IRR)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call SaveReal(japi_ht, japi___key, 2, x)
        call SaveReal(japi_ht, japi___key, 3, y)
        call Call("EXSetEffectXY")
    endfunction
    
    
    ///<summary>获取可追踪物X轴 [JAPI]</summary>
     function EXGetTrackableX takes trackable Handle returns real
        call SaveStr(japi_ht, japi___key, 0, "(I)R")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXGetEffectX")
        return LoadReal(japi_ht, japi___key, 0)
	endfunction
    
    ///<summary>获取可追踪物Y轴 [JAPI]</summary>
  function EXGetTrackableY takes trackable Handle returns real
        call SaveStr(japi_ht, japi___key, 0, "(I)R")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(Handle))
        call Call("EXGetEffectY")
        return LoadReal(japi_ht, japi___key, 0)
	endfunction
    
    
    
     function EXExecuteScript takes string str returns string
        call SaveStr(japi_ht, japi___key, 0, "(S)S")
        call SaveStr(japi_ht, japi___key, 1, str)
        call Call("EXExecuteScript")
        return LoadStr(japi_ht, japi___key, 0)
    endfunction
    //-----------------模拟聊天----------------------------
     function EXDisplayChat takes player p,integer chat_recipient,string message returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IIS)V")
        call SaveInteger(japi_ht, japi___key, 1, GetHandleId(p))
        call SaveInteger(japi_ht, japi___key, 2, chat_recipient)
        call SaveStr(japi_ht, japi___key, 3, message)
        call Call("EXDisplayChat")
    endfunction
  function YDWEDisplayChat takes player p,integer chat_recipient,string message returns nothing
		call EXDisplayChat(p , chat_recipient , message)
	endfunction
    
    //-----------版本描述-------------------------------------
    
    //获取地图名字
     function GetMapName takes nothing returns string
        call SaveStr(japi_ht, japi___key, 0, "()S")
        call Call("GetMapName")
        return LoadStr(japi_ht, japi___key, 0)
    endfunction
    
    //获取魔兽版本
     function GetGameVersion takes nothing returns integer
        call SaveStr(japi_ht, japi___key, 0, "()I")
        call Call("GetGameVersion")
        return LoadInteger(japi_ht, japi___key, 0)
    endfunction
    
    //获取插件版本
     function GetPluginVersion takes nothing returns string
        call SaveStr(japi_ht, japi___key, 0, "()S")
        call Call("GetPluginVersion")
        return LoadStr(japi_ht, japi___key, 0)
    endfunction
    
     function GetFuncAddr takes code f returns integer
        call SetHeroLevels(f)
        return LoadInteger(japi_ht, japi___key, 0)
    endfunction
     function japiDoNothing takes nothing returns nothing
        
    endfunction
    
     function func_bind_trigger_name takes code functions,string name returns nothing
        call SaveStr(japi_ht, japi___key, 0, "(IS)V")
        call SaveInteger(japi_ht, japi___key, 1, GetFuncAddr(functions))
        call SaveStr(japi_ht, japi___key, 2, name)
        call Call("func_bind_trigger_name")
    endfunction
    
     function open_code_run_logs takes boolean open returns nothing
        local string l=""
        set l=l + "(function () "
        set l=l + "lfunc={}  lfunc_name={}"
        set l=l + "save_lfunc_info=function (func,name,index)index=1<<index lfunc[func]=index lfunc_name[index]=name end "
        set l=l + "save_lfunc_info('GetLocalPlayer','[本地玩家]',0)"
        set l=l + "save_lfunc_info('GetFps','[获取帧数]',1)"
        set l=l + "save_lfunc_info('GetChatState','[聊天状态]',2)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionLoc','[当前镜头目标点]',3)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionX','[当前镜头目标X坐标]',4)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionY','[当前镜头目标Y坐标]',5)"
        set l=l + "save_lfunc_info('GetCameraTargetPositionZ','[当前镜头目标Z坐标]',6)"
        
        set l=l + "save_lfunc_info('GetCameraEyePositionLoc','[当前镜头源位置]',7)"
        set l=l + "save_lfunc_info('GetCameraEyePositionX','[当前镜头源X坐标]',8)"
        set l=l + "save_lfunc_info('GetCameraEyePositionY','[当前镜头源Y坐标]',9)"
        set l=l + "save_lfunc_info('GetCameraEyePositionZ','[当前镜头源Z坐标]',10)"
        
        set l=l + "save_lfunc_info('GetMouseX','[获取鼠标X轴]',11)"
        set l=l + "save_lfunc_info('GetMouseY','[获取鼠标Y轴]',12)"
        set l=l + "save_lfunc_info('GetMouseVectorX','[获取鼠标屏幕X轴]',13)"
        set l=l + "save_lfunc_info('GetMouseVectorY','[获取鼠标屏幕Y轴]',14)"
        
        set l=l + "end)() or '' "
        call EXExecuteScript(l)
        
        set l=""
        
        set l=l + "(function () "
        
        set l=l + "get_jass_func_info=function (func_name) "
        set l=l + " return lfunc[func_name] or 0 "
        set l=l + "end "
        
        set l=l + "get_jass_func_msg=function (func_name_index)"
        set l=l + " return lfunc_name[func_name_index] or '' "
        set l=l + "end "
        
        set l=l + "local storm=require 'jass.storm' "
        set l=l + "local ss=storm.load('war3map.j') "
        set l=l + "ss:gsub('function%s+([%w_]+)%s+takes(.-)endfunction',function (name,code)\n"
        set l=l + "code=code:gsub('function%s+','function_'):gsub('//[^\\n]-\\n','')\n"
        set l=l + "code:gsub('([%w_]+)',function (str) "
        set l=l + "if lfunc[str]~=nil then "
        set l=l + "local flag=lfunc[name] or 0 "
        set l=l + "lfunc[name]=flag | lfunc[str] "
        set l=l + "end "
        set l=l + "end) "
        set l=l + "end) "
        set l=l + "ss=nil  return '' "
        set l=l + "end)() or '' "
        call EXExecuteScript(l)
        call SaveStr(japi_ht, japi___key, 0, "(B)V")
        call SaveBoolean(japi_ht, japi___key, 1, open)
        call Call("open_code_run_logs")
    endfunction
    
    
    
     function initializePlugin takes nothing returns integer
        call ExecuteFunc("japiDoNothing")
        call StartCampaignAI(Player(PLAYER_NEUTRAL_AGGRESSIVE), "callback")
        call Call(I2S(GetHandleId(japi_ht)))
        call SaveStr(japi_ht, japi___key, 0, "(I)V")
        call SaveInteger(japi_ht, japi___key, 1, GetFuncAddr(function japiDoNothing))
        call Call("SaveFunc")
        call ExecuteFunc("japiDoNothing")
        return 0
    endfunction

//library japi ends
//library LocalActionLib:
    function LocalActionLib__Call takes string str returns nothing
        call UnitId(str)
    endfunction
    
    //本地发布无目标命令
    function LocalOrder takes integer order,integer flags returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(II)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, order)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 2, flags)
        call LocalActionLib__Call("LocalOrder")
    endfunction
    
    //本地发布坐标命令
    function LocalPointOrder takes integer order,real x,real y,integer flags returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(IRRI)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, order)
        call SaveReal(LocalActionLib__ht, LocalActionLib__key, 2, x)
        call SaveReal(LocalActionLib__ht, LocalActionLib__key, 3, y)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 4, flags)
        call LocalActionLib__Call("LocalPointOrder")
    endfunction
    
    //本地发布目标命令
    function LocalTargetOrder takes integer order,widget object,integer flags returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(IHwidget;I)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, order)
        call SaveWidgetHandle(LocalActionLib__ht, LocalActionLib__key, 2, object)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 3, flags)
        call LocalActionLib__Call("LocalTargetOrder")
    endfunction
    
    //获取玩家当前选择的单位
    function GetPlayerSelectedUnit takes player p returns unit
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(I)Hunit;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, GetHandleId(p))
        call LocalActionLib__Call("GetPlayerSelectedUnit")
        return LoadUnitHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //获取玩家当前鼠标指向的单位
    function GetTargetUnit takes nothing returns unit
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(V)Hunit;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call LocalActionLib__Call("GetTargetObject")
        return LoadUnitHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //获取玩家当前鼠标指向的物品
    function GetTargetItem takes nothing returns item
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(V)Hitem;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call LocalActionLib__Call("GetTargetObject")
        return LoadItemHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //获取玩家当前鼠标指向的 可选择的可破坏物
    function GetTargetDestructable takes nothing returns destructable
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(V)Hdestructable;")
        call RemoveSavedHandle(LocalActionLib__ht, LocalActionLib__key, 0)
        call LocalActionLib__Call("GetTargetObject")
        return LoadDestructableHandle(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    // 设置单位技能按钮是否显示   false 即隐藏 隐藏之后无法发布命令 跟玩家禁用相同
    //使用不会打断命令  可以 在发布命令的时候  显示 发布命令 隐藏 即可
    function SetUnitAbilityButtonShow takes unit u,integer id,boolean show returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(IIB)V")
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 1, GetHandleId(u))
        call SaveInteger(LocalActionLib__ht, LocalActionLib__key, 2, id)
        call SaveBoolean(LocalActionLib__ht, LocalActionLib__key, 3, show)
        call LocalActionLib__Call("SetUnitAbilityButtonShow")
    endfunction
    
    //设置 是否显示FPS  显示状态下 调用false 可以隐藏 ，相反可以显示
    function ShowFpsText takes boolean Open returns nothing
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "(B)V")
        call SaveBoolean(LocalActionLib__ht, LocalActionLib__key, 1, Open)
        call LocalActionLib__Call("ShowFpsText")
    endfunction
    
    //获取当前游戏的 fps值  即 游戏画面的帧数
    function GetFps takes nothing returns real
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "()R")
        call LocalActionLib__Call("GetFps")
        return LoadReal(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
    
    //获取聊天状态  有聊天输入框的情况下 返回true  没有返回false 
    //可以通过 d3d库里的模拟按键 模拟按下ESC 或者enter 来禁止玩家聊天
    function GetChatState takes nothing returns boolean
        call SaveStr(LocalActionLib__ht, LocalActionLib__key, 0, "()B")
        call LocalActionLib__Call("GetChatState")
        return LoadBoolean(LocalActionLib__ht, LocalActionLib__key, 0)
    endfunction
  

//library LocalActionLib ends
//library d3d:
    
    function d3d__Call takes string str returns nothing
        call UnitId(str)
    endfunction
    
    //==================获取鼠标相对魔兽窗口的坐标==========================
    // 不会因为窗口的改变大小或移动而影响的相对坐标
    
    //获取鼠标在屏幕的x轴
    function GetMouseVectorX takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetMouseVectorX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //获取鼠标在屏幕的y轴
    function GetMouseVectorY takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetMouseVectorY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //获取魔兽窗口宽
    function GetWindowWidth takes nothing returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "()I")
        call d3d__Call("GetWindowWidth")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //获取魔兽窗口高
    function GetWindowHeight takes nothing returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "()I")
        call d3d__Call("GetWindowHeight")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //16进制函数
    function Hex takes integer i returns string
        call SaveStr(d3d__ht, d3d__key, 0, "(I)S")
        call SaveInteger(d3d__ht, d3d__key, 1, i)
        call d3d__Call("Hex")
    return LoadStr(d3d__ht, d3d__key, 0)
    endfunction
    
    //==================字体类================================
    //创建字体
    function CreateFont takes nothing returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "()I")
        call d3d__Call("CreateFont")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //销毁字体
    function DestroyFont takes integer font returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(I)V")
        call d3d__Call("DestroyFont")
    endfunction
    
    //获取字体宽
    function GetFontWidth takes integer font returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontWidth")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置字体宽
    function SetFontWidth takes integer font,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontWidth")
    endfunction
    
    //获取字体高
    function GetFontHeight takes integer font returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontHeight")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置字体高
    function SetFontHeight takes integer font,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontHeight")
    endfunction
    
    //获取字体粗细
    function GetFontWeight takes integer font returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontWeight")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置字体粗细
    function SetFontWeight takes integer font,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontWeight")
    endfunction
    
    //设置字体是否倾斜
    function SetFontItalic takes integer font,boolean value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveBoolean(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontItalic")
    endfunction
    
    //获取字体类型
    function GetFontFaceName takes integer font returns string
        call SaveStr(d3d__ht, d3d__key, 0, "(I)S")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call d3d__Call("GetFontFaceName")
        return LoadStr(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置字体类型
    function SetFontFaceName takes integer font,string value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IS)V")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveStr(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetFontFaceName")
    endfunction
    
    //==============写字类===========================
    //创建文字 参数是 字体 内容 屏幕坐标x y 存活时间 颜色值
    function CreateText takes integer font,string str,real x,real y,real time,integer color returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(ISRRRI)I")
        call SaveInteger(d3d__ht, d3d__key, 1, font)
        call SaveStr(d3d__ht, d3d__key, 2, str)
        call SaveReal(d3d__ht, d3d__key, 3, x)
        call SaveReal(d3d__ht, d3d__key, 4, y)
        call SaveReal(d3d__ht, d3d__key, 5, time)
        call SaveInteger(d3d__ht, d3d__key, 6, color)
        call d3d__Call("CreateText")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //获取文字内容
    function GetTextString takes integer text returns string
        call SaveStr(d3d__ht, d3d__key, 0, "(I)S")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextString")
        return LoadStr(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置文字内容
    function SetTextString takes integer text,string str returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IS)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveStr(d3d__ht, d3d__key, 2, str)
        call d3d__Call("SetTextString")
    endfunction
    
    //获取文字坐标x轴
    function GetTextX takes integer text returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置文字坐标x轴
    function SetTextX takes integer text,real x returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveReal(d3d__ht, d3d__key, 2, x)
        call d3d__Call("SetTextX")
    endfunction
    
    //获取文字坐标y轴
    function GetTextY takes integer text returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置文字坐标y轴
    function SetTextY takes integer text,real y returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveReal(d3d__ht, d3d__key, 2, y)
        call d3d__Call("SetTextY")
    endfunction
    
    //获取文字剩余存活时间
    function GetTextTime takes integer text returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextTime")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置文字剩余存活时间
    function SetTextTime takes integer text,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextTime")
    endfunction
    
    //获取文字颜色 16进制 0xFFFFFFFF 前2位表示透明 后6位表示 红绿蓝
    function GetTextColor takes integer text returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call d3d__Call("GetTextColor")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置文字颜色 16进制
    function SetTextColor takes integer text,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, text)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextColor")
    endfunction
    
    //创建屏幕图像 图像路径 相对魔兽窗口x轴 相对魔兽窗口y轴 相对魔兽窗口 宽度 相对魔兽窗口 高度 等级
    function CreateTexture takes string path,real x,real y,real width,real height,integer color,integer level returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(SRRRRII)I")
        call SaveStr(d3d__ht, d3d__key, 1, path)
        call SaveReal(d3d__ht, d3d__key, 2, x)
        call SaveReal(d3d__ht, d3d__key, 3, y)
        call SaveReal(d3d__ht, d3d__key, 4, width)
        call SaveReal(d3d__ht, d3d__key, 5, height)
        call SaveInteger(d3d__ht, d3d__key, 6, color)
        call SaveInteger(d3d__ht, d3d__key, 7, level)
        call d3d__Call("CreateTexture")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //删除图像
    function DestroyTexture takes integer texture returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(I)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("DestroyTexture")
    endfunction
    
    //获取图像相对魔兽窗口坐标x轴
    function GetTextureX takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像相对魔兽窗口坐标x轴
    function SetTextureX takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureX")
    endfunction
    
    //获取图像相对魔兽窗口坐标y轴
    function GetTextureY takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像相对魔兽窗口坐标y轴
    function SetTextureY takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureY")
    endfunction
    
    //获取图像相对魔兽窗口 宽度
    function GetTextureWidth takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureWidth")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像相对魔兽窗口 宽度
    function SetTextureWidth takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureWidth")
    endfunction
    
    //获取图像相对魔兽窗口 高度
    function GetTextureHeight takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureHeight")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像相对魔兽窗口 高度
    function SetTextureHeight takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureHeight")
    endfunction
    
    //获取图像颜色
    function GetTextureColor takes integer texture returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureColor")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像颜色
    function SetTextureColor takes integer texture,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureColor")
    endfunction
    
    //获取图像级别 级别越高 越上层显示
    function GetTextureLevel takes integer texture returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(I)I")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureLevel")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像级别 级别越高越上层显示
    function SetTextureLevel takes integer texture,integer value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureLevel")
    endfunction
    
    //获取图像旋转角度
    function GetTextureRotation takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureRotation")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图像旋转角度  参数 图像,角度  角度制
    function SetTextureRotation takes integer texture,real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IR)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveReal(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureRotation")
    endfunction
    
    //获取图像像素的 宽
    function GetTexturePixelWidth takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTexturePixelWidth")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //获取图像像素的 高  可以在  宽 * 高的矩形里进行切割
    function GetTexturePixelHeight takes integer texture returns real
        call SaveStr(d3d__ht, d3d__key, 0, "(I)R")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTexturePixelWidth")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //获取图形切割区域 默认完整的图形区域
    //注意！ 返回的rect 是handle 记得用 RemoveRect 排泄
    function GetTextureSrcRect takes integer texture returns rect
        call SaveStr(d3d__ht, d3d__key, 0, "(I)Hrect;")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call d3d__Call("GetTextureSrcRect")
        return LoadRectHandle(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置图形切割区域  在原图片上按 rect 矩形进行切割
    //rect的范围应该这样描绘 local rect r=Rect(左,下,右,上) 来决定切割这个区域 
    //比如 128*256的图片 完整的图片的 矩形应该是 左=0 下=0 右=128 上=256
    // 左上右下 表示 图片像素里的 宽跟高的范围
    function SetTextureSrcRect takes integer texture,rect value returns nothing
        call RemoveSavedHandle(d3d__ht, d3d__key, 0)
        call SaveStr(d3d__ht, d3d__key, 0, "(IHrect;)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveRectHandle(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureSrcRect")
    endfunction
    
    //更改图像图形  参数 图像句柄 新的图形路径
    function SetTexture takes integer texture,string value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IS)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveStr(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTexture")
    endfunction
    
    //设置图像是否显示 隐藏 true显示  false隐藏
    function SetTextureShow takes integer texture,boolean value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveBoolean(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureShow")
    endfunction
    
    //设置图像是否响应事件 默认true 为开启触发状态 false为关闭触发
    function SetTextureTrigger takes integer texture,boolean value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveBoolean(d3d__ht, d3d__key, 2, value)
        call d3d__Call("SetTextureTrigger")
    endfunction
    
    //开启图像的触发器
    function EnableTextureTrigger takes integer texture returns nothing
        call SetTextureTrigger(texture , true)
    endfunction
    
    //关闭图像的触发器
    function DisableTextureTrigger takes integer texture returns nothing
        call SetTextureTrigger(texture , false)
    endfunction
    
    //获取 图片中心点X轴
    function GetTextureCenterX takes integer texture returns real
        return GetTextureX(texture) + GetTextureWidth(texture) / 2
    endfunction
    
    //获取 图片中心点y轴
    function GetTextureCenterY takes integer texture returns real
        return GetTextureY(texture) + GetTextureHeight(texture) / 2
    endfunction
    
    //获取 图片左下角X轴
    function GetTextureMinX takes integer texture returns real
        return GetTextureX(texture)
    endfunction
    
    //获取 图片左下角y轴
    function GetTextureMinY takes integer texture returns real
        return GetTextureY(texture)
    endfunction
    
    //获取 图片右上角X轴
    function GetTextureMaxX takes integer texture returns real
        return GetTextureX(texture) + GetTextureWidth(texture)
    endfunction
    
    //获取 图片右上角y轴
    function GetTextureMaxY takes integer texture returns real
        return GetTextureY(texture) + GetTextureHeight(texture)
    endfunction
    
    //==================================================
    //给图像添加事件  
    //第一个参数是图像地址
    //第二个参数是按键值   
    //第三个参数是 按下时回调的函数 
    //第四个参数是 弹起时回调的函数
    //鼠标移动事件 则是 第3个参数 是进入图形区域时调用 离开图形区域时调用第4个参数
    //返回事件句柄
    //==================================================
    function TextureAddEvent takes integer texture,integer order,code wCallBack,code lCallBack returns integer
        call SaveStr(d3d__ht, d3d__key, 0, "(IIII)I")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, order)
        call SaveInteger(d3d__ht, d3d__key, 3, GetFuncAddr(wCallBack))
        call SaveInteger(d3d__ht, d3d__key, 4, GetFuncAddr(lCallBack))
        call d3d__Call("TextureAddEvent")
        return LoadInteger(d3d__ht, d3d__key, 0)
    endfunction
    
    //图像删除事件 参数 图像句柄 事件句柄
    function TextureRemoveEvent takes integer texture,integer Event returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(II)V")
        call SaveInteger(d3d__ht, d3d__key, 1, texture)
        call SaveInteger(d3d__ht, d3d__key, 2, Event)
        call d3d__Call("TextureRemoveEvent")
    endfunction
    
    //设置键位状态 指定键位 按下或弹起状态  true为按下 false为弹起
    function SetKeyboard takes integer Key,boolean up returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(IB)V")
        call SaveInteger(d3d__ht, d3d__key, 1, Key)
        call SaveBoolean(d3d__ht, d3d__key, 2, up)
        call d3d__Call("SetKeyboard")
    endfunction
    
    // 模拟按键  按下 弹起 模拟1次点击
    function ClickKeyboard takes integer Key returns nothing
        call SetKeyboard(Key , true)
        call SetKeyboard(Key , false)
    endfunction
    
    //=========================图像事件响应动作====================
    
    function GetEventIndex takes nothing returns integer
        return GetHandleId(GetExpiredTimer())
    endfunction
    
    //获取响应的键位
    function GetTriggerKeyboard takes nothing returns integer
        return LoadInteger(d3d__ht, GetEventIndex(), 0x100)
    endfunction
    
    //获取触发图像
    function GetTriggerTexture takes nothing returns integer
        return LoadInteger(d3d__ht, GetEventIndex(), 0xff)
    endfunction
    
    //获取响应事件
    function GetTriggerEvent takes nothing returns integer
        return LoadInteger(d3d__ht, GetEventIndex(), 0xfe)
    endfunction
    
    // 获取响应的键盘操作 按下为true 弹起为false
    function GetTriggerKeyboardAction takes nothing returns boolean
        if ( LoadInteger(d3d__ht, GetEventIndex(), 0x101) == 0 ) then
            return false
        endif
        return true
    endfunction
    
    //====================魔兽控制台UI=============================
    //设置是否隐藏控制台UI true为隐藏 false为恢复
    function ShowConsole takes boolean show returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(B)V")
        call SaveBoolean(d3d__ht, d3d__key, 1, show)
        call d3d__Call("ShowConsole")
    endfunction
    
    //获取小地图图形位置X轴向量
    function GetLittleMapX takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetLittleMapX")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置小地图图形位置X轴向量
    function SetLittleMapX takes real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(R)V")
        call SaveReal(d3d__ht, d3d__key, 1, value)
        call d3d__Call("SetLittleMapX")
    endfunction
    
    //获取小地图图形位置y轴向量
    function GetLittleMapY takes nothing returns real
        call SaveStr(d3d__ht, d3d__key, 0, "()R")
        call d3d__Call("GetLittleMapY")
        return LoadReal(d3d__ht, d3d__key, 0)
    endfunction
    
    //设置小地图图形位置Y轴向量
    function SetLittleMapY takes real value returns nothing
        call SaveStr(d3d__ht, d3d__key, 0, "(R)V")
        call SaveReal(d3d__ht, d3d__key, 1, value)
        call d3d__Call("SetLittleMapY")
    endfunction
    
    //====================字体结构体的封装=============================
        function s__LOGFONT__get_lfHeight takes integer this returns integer
            return GetFontHeight(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfHeight takes integer this,integer value returns nothing
            call SetFontHeight(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__get_lfWidth takes integer this returns integer
            return GetFontWidth(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfWidth takes integer this,integer value returns nothing
            call SetFontWidth(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__get_lfWeight takes integer this returns integer
            return GetFontWeight(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfWeight takes integer this,integer value returns nothing
            call SetFontWeight(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__set_lfItalic takes integer this,boolean value returns nothing
            call SetFontItalic(s__LOGFONT_font[this] , value)
        endfunction
        function s__LOGFONT__get_lfFaceName takes integer this returns string
            return GetFontFaceName(s__LOGFONT_font[this])
        endfunction
        function s__LOGFONT__set_lfFaceName takes integer this,string str returns nothing
            call SetFontFaceName(s__LOGFONT_font[this] , str)
        endfunction
        function s__LOGFONT_create takes nothing returns integer
            local integer logfont=s__LOGFONT__allocate()
            set s__LOGFONT_font[logfont]=CreateFont()
            return logfont
        endfunction
        function s__LOGFONT_onDestroy takes integer this returns nothing
            call DestroyFont(s__LOGFONT_font[this])
        endfunction

//Generated destructor of LOGFONT
function s__LOGFONT_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__LOGFONT_V[this]!=-1) then
        return
    endif
    call s__LOGFONT_onDestroy(this)
    set si__LOGFONT_V[this]=si__LOGFONT_F
    set si__LOGFONT_F=this
endfunction
        function s__LOGFONT_Text takes integer this,string str,real x,real y,real time,integer color returns integer
            return CreateText(s__LOGFONT_font[this] , str , x , y , time , color)
        endfunction
    

//library d3d ends
//===========================================================================
// 
// Wurst Example Map
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri Aug 10 13:09:44 2018
//   Map Author: Wurst Team
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
endfunction
//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'e009', 6242.5, - 1090.0, 270.000)
    set u=CreateUnit(p, 'e009', 6576.4, - 877.2, 270.000)
    set u=CreateUnit(p, 'e009', 6888.0, - 639.2, 270.000)
    set u=CreateUnit(p, 'e00A', 10999.5, 1643.8, 270.000)
    set u=CreateUnit(p, 'e009', 5848.5, - 253.6, 270.000)
    set u=CreateUnit(p, 'e009', 5920.9, - 1337.7, 270.000)
    set u=CreateUnit(p, 'e009', 6645.2, 39.1, 270.000)
    set u=CreateUnit(p, 'e00A', 10594.1, 1427.2, 270.000)
    set u=CreateUnit(p, 'e00A', 9989.8, 2178.0, 270.000)
    set u=CreateUnit(p, 'e009', 6062.6, - 457.5, 270.000)
    set u=CreateUnit(p, 'e00A', 9873.7, 2034.4, 270.000)
    set u=CreateUnit(p, 'e00A', 10243.8, 1416.6, 270.000)
    set u=CreateUnit(p, 'e00A', 10478.2, 2193.4, 270.000)
    set u=CreateUnit(p, 'e00A', 9849.8, 1515.6, 270.000)
    set u=CreateUnit(p, 'e00A', 9971.8, 894.2, 270.000)
    set u=CreateUnit(p, 'e00A', 9089.1, 144.9, 270.000)
    set u=CreateUnit(p, 'e00A', 9847.5, 891.6, 270.000)
    set u=CreateUnit(p, 'e00A', 5368.6, - 2508.2, 270.000)
    set u=CreateUnit(p, 'e00A', 4723.4, - 1794.0, 270.000)
    set u=CreateUnit(p, 'e00A', 4349.5, - 2540.9, 270.000)
    set u=CreateUnit(p, 'e00A', 4090.8, - 1782.6, 270.000)
    set u=CreateUnit(p, 'e00A', 3841.4, - 2799.9, 270.000)
    set u=CreateUnit(p, 'e00A', 3457.5, - 2050.0, 270.000)
    set u=CreateUnit(p, 'e00B', - 5123.5, - 2049.7, 270.000)
    set u=CreateUnit(p, 'e00A', - 5491.9, 490.2, 270.000)
    set u=CreateUnit(p, 'e00B', - 5625.9, - 1045.2, 270.000)
    set u=CreateUnit(p, 'e00B', - 5127.1, - 3767.6, 270.000)
    set u=CreateUnit(p, 'e00A', 9087.6, - 18.9, 270.000)
    set u=CreateUnit(p, 'e00A', - 4611.2, - 3223.3, 270.000)
    set u=CreateUnit(p, 'e00A', - 4740.9, - 2315.2, 270.000)
    set u=CreateUnit(p, 'e00A', - 1416.6, - 2957.1, 270.000)
    set u=CreateUnit(p, 'e00A', 2678.7, - 2811.4, 270.000)
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: japi常量库
//
//   
//===========================================================================
//TESH.scrollpos=20
//TESH.alwaysfold=0


        
    //键盘键位 
    //以下键位 按下 运行 TextureAddEvent 的第3个参数
    //弹起 运行 第4个参数
    
    //大键盘数字键
    
    //小键盘 数字键
    
    
    
    
    
    
    //魔兽版本 用GetGameVersion 来获取当前版本 来对比以下具体版本做出相应操作
    //-----------模拟聊天------------------
    
    //---------技能数据类型---------------
    
    ///<summary>冷却时间</summary>
    ///<summary>目标允许</summary>
    ///<summary>施放时间</summary>
    ///<summary>持续时间</summary>
    ///<summary>持续时间</summary>
    ///<summary>魔法消耗</summary>
    ///<summary>施放间隔</summary>
    ///<summary>影响区域</summary>
    ///<summary>施法距离</summary>
    ///<summary>数据A</summary>
    ///<summary>数据B</summary>
    ///<summary>数据C</summary>
    ///<summary>数据D</summary>
    ///<summary>数据E</summary>
    ///<summary>数据F</summary>
    ///<summary>数据G</summary>
    ///<summary>数据H</summary>
    ///<summary>数据I</summary>
    ///<summary>单位类型</summary>
    ///<summary>热键</summary>
    ///<summary>关闭热键</summary>
    ///<summary>学习热键</summary>
    ///<summary>名字</summary>
    ///<summary>图标</summary>
    ///<summary>目标效果</summary>
    ///<summary>施法者效果</summary>
    ///<summary>目标点效果</summary>
    ///<summary>区域效果</summary>
    ///<summary>投射物</summary>
    ///<summary>特殊效果</summary>
    ///<summary>闪电效果</summary>
    ///<summary>buff提示</summary>
    ///<summary>buff提示</summary>
    ///<summary>学习提示</summary>
    ///<summary>提示</summary>
    ///<summary>关闭提示</summary>
    ///<summary>学习提示</summary>
    ///<summary>提示</summary>
    ///<summary>关闭提示</summary>
    
    //----------物品数据类型----------------------
    ///<summary>物品图标</summary>
    ///<summary>物品提示</summary>
    ///<summary>物品扩展提示</summary>
    ///<summary>物品名字</summary>
    ///<summary>物品说明</summary>
    //------------单位数据类型--------------
    ///<summary>攻击1 伤害骰子数量</summary>
    ///<summary>攻击1 伤害骰子面数</summary>
    ///<summary>攻击1 基础伤害</summary>
    ///<summary>攻击1 升级奖励</summary>
    ///<summary>攻击1 最小伤害</summary>
    ///<summary>攻击1 最大伤害</summary>
    ///<summary>攻击1 全伤害范围</summary>
    ///<summary>装甲</summary>
    // attack 1 attribute adds
    ///<summary>攻击1 伤害衰减参数</summary>
    ///<summary>攻击1 武器声音</summary>
    ///<summary>攻击1 攻击类型</summary>
    ///<summary>攻击1 最大目标数</summary>
    ///<summary>攻击1 攻击间隔</summary>
    ///<summary>攻击1 攻击延迟/summary>
    ///<summary>攻击1 弹射弧度</summary>
    ///<summary>攻击1 攻击范围缓冲</summary>
    ///<summary>攻击1 目标允许</summary>
    ///<summary>攻击1 溅出区域</summary>
    ///<summary>攻击1 溅出半径</summary>
    ///<summary>攻击1 武器类型</summary>
    // attack 2 attributes (sorted in a sequencial order based on memory address)
    ///<summary>攻击2 伤害骰子数量</summary>
    ///<summary>攻击2 伤害骰子面数</summary>
    ///<summary>攻击2 基础伤害</summary>
    ///<summary>攻击2 升级奖励</summary>
    ///<summary>攻击2 伤害衰减参数</summary>
    ///<summary>攻击2 武器声音</summary>
    ///<summary>攻击2 攻击类型</summary>
    ///<summary>攻击2 最大目标数</summary>
    ///<summary>攻击2 攻击间隔</summary>
    ///<summary>攻击2 攻击延迟</summary>
    ///<summary>攻击2 攻击范围</summary>
    ///<summary>攻击2 攻击缓冲</summary>
    ///<summary>攻击2 最小伤害</summary>
    ///<summary>攻击2 最大伤害</summary>
    ///<summary>攻击2 弹射弧度</summary>
    ///<summary>攻击2 目标允许类型</summary>
    ///<summary>攻击2 溅出区域</summary>
    ///<summary>攻击2 溅出半径</summary>
    ///<summary>攻击2 武器类型</summary>
    ///<summary>装甲类型</summary>
    
    
//===========================================================================
// Trigger: 新japi库
//
// 11
//===========================================================================
//TESH.scrollpos=258
//TESH.alwaysfold=0


//===========================================================================
// Trigger: 新d3d库
//===========================================================================
//TESH.scrollpos=582
//TESH.alwaysfold=0
// Trigger: 异步japi库
//
//  1
//===========================================================================
//TESH.scrollpos=73
//TESH.alwaysfold=0

//这个库里面的japi 是在本地玩家 异步的情况下运行的动作 ,不可在非异步的环境下运行
//数据需要同步之后再使用
//运行完之后 会自动同步 在触发响应之后做动作
// 本地消息的FLAG
// 这4个消息标志可以相加组合
//使用方法 本地坐标命令(命令id,坐标x轴,坐标y轴,FLAG_INSTANT + FLAG_ONLY) flag标签为   瞬发+独立
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_japi_________u()
    //Function not found: call InitTrig____japi___u()
    //Function not found: call InitTrig____d3d___u()
    //Function not found: call InitTrig_______japi___u()
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_COMPUTER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)
    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)
    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call ForcePlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)
    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call ForcePlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)
    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)
    // Player 10
    call SetPlayerStartLocation(Player(10), 9)
    call ForcePlayerStartLocation(Player(10), 9)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(Player(10), true)
    call SetPlayerController(Player(10), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_071
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerTeam(Player(6), 0)
    call SetPlayerTeam(Player(7), 0)
    call SetPlayerTeam(Player(8), 0)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    // Force: TRIGSTR_072
    call SetPlayerTeam(Player(0), 1)
    call SetPlayerTeam(Player(10), 1)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(0), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(0), true)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 7)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 7)
    call SetStartLocPrio(1, 0, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 3, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 4, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 5, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 7)
    call SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 3, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 4, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 5, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 7)
    call SetStartLocPrio(3, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 3, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 4, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 5, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(4, 7)
    call SetStartLocPrio(4, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 3, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 4, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 5, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(5, 7)
    call SetStartLocPrio(5, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 4, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 5, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(6, 7)
    call SetStartLocPrio(6, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 5, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(7, 7)
    call SetStartLocPrio(7, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 6, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(8, 7)
    call SetStartLocPrio(8, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 6, 7, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call JapiConstantLib_init()
 call initializePlugin()
 call SetCameraBounds(- 11520.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 11776.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 11520.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 11776.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs10644359")

    call InitGlobals()
    call InitCustomTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("TRIGSTR_008")
    call SetMapDescription("")
    call SetPlayers(10)
    call SetTeams(10)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, 0.0, 0.0)
    call DefineStartLocation(1, 0.0, 0.0)
    call DefineStartLocation(2, 0.0, 0.0)
    call DefineStartLocation(3, 0.0, 0.0)
    call DefineStartLocation(4, 0.0, 0.0)
    call DefineStartLocation(5, 0.0, 0.0)
    call DefineStartLocation(6, 0.0, 0.0)
    call DefineStartLocation(7, 0.0, 0.0)
    call DefineStartLocation(8, 0.0, 0.0)
    call DefineStartLocation(9, 0.0, 0.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa__LOGFONT_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            call DestroyFont(s__LOGFONT_font[this])
   return true
endfunction

function jasshelper__initstructs10644359 takes nothing returns nothing
    set st__LOGFONT_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__LOGFONT_onDestroy,Condition( function sa__LOGFONT_onDestroy))


endfunction
