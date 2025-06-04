--!strict

local DialogueMakerTypes = require(script.Parent.roblox_packages.dialogue_maker_types);

type Effect = DialogueMakerTypes.Effect;
type Bounds = DialogueMakerTypes.Bounds;
type RunEffectFunction = DialogueMakerTypes.RunEffectFunction;
type FitFunction = DialogueMakerTypes.FitFunction;

local Effect = {};

export type ConstructorProperties = {
  name: string;
  run: RunEffectFunction;
  fit: FitFunction;
}

function Effect.new(properties: ConstructorProperties): Effect

  local effect: Effect = {
    type = "Effect";
    name = properties.name;
    fit = properties.fit;
    run = properties.run;
  };

  return effect;

end;

return Effect;