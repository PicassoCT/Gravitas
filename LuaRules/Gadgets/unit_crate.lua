function gadget:GetInfo()
  return {
    name      = "Crate mechanics",
    desc      = "Invulnerable crates and stuff",
    author    = "gajop",
    date      = "April 2015",
    license   = "GNU GPL, v3",
    layer     = 0,
    enabled   = true,
  }
end

-- SYNCED
if gadgetHandler:IsSyncedCode() then

function gadget:UnitPreDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam)
    if UnitDefs[unitDefID].name == "crate" then
        return 0
    end
    return damage
end

end