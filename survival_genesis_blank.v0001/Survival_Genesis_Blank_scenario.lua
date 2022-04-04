version = 3 -- Lua Version. Dont touch this
ScenarioInfo = {
    name = "Survival Genesis Blank",
    description = "Survival mode created by Packer.",
    preview = '',
    map_version = 1,
    type = 'skirmish',
    starts = true,
    size = {512, 512},
    reclaim = {0, 0},
    map = '/maps/survival_genesis_blank.v0001/survival_genesis_blank.scmap',
    save = '/maps/survival_genesis_blank.v0001/survival_genesis_blank_save.lua',
    script = '/maps/survival_genesis_blank.v0001/survival_genesis_blank_script.lua',
    directory = '/maps/survival_genesis_blank.v0001/',
    norushradius = 40,
    Configurations = {
        ['standard'] = {
            teams = {
                {
                    name = 'FFA',
                    armies = {'ARMY_1', 'ARMY_2', 'ARMY_3', 'ARMY_4', 'ARMY_5', 'ARMY_6'}
                },
            },
            customprops = {
                ['ExtraArmies'] = STRING( 'ARMY_17 NEUTRAL_CIVILIAN ARMY_SURVIVAL_ALLY ARMY_SURVIVAL_ENEMY' ),
            },
        },
    },
}
