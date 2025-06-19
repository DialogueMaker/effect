--!strict

local packages = script.Parent.roblox_packages;
local DialogueMakerTypes = require(packages.dialogue_maker_types);

type Effect = DialogueMakerTypes.Effect;
type Bounds = DialogueMakerTypes.Bounds;
type RunEffectFunction = DialogueMakerTypes.RunEffectFunction;

local Effect = {};

export type ConstructorProperties = {
  name: string;
  run: RunEffectFunction;
}

function Effect.new(properties: ConstructorProperties): Effect

  local effect: Effect = {
    type = "Effect";
    name = properties.name;
    run = properties.run;
  };

  return effect;

end;

return Effect;