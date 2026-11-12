local migration={}
local imported=false
function migration.adopt()
 local incoming=storage._migrated
 local payload=incoming and incoming["metal-and-stars"]
 if not payload then return false end
 for key in pairs(storage) do assert(key=="_migrated", "metal-and-stars-updated: destination already has state; explicit conflict resolution required") end
 incoming["metal-and-stars"]=nil
 if next(incoming) then payload._migrated=incoming end
 storage=payload
 imported=true
 return true
end
function migration.imported_this_session() return imported end
return migration
