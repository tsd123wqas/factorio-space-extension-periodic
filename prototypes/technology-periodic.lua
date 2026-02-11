local classicMode = settings.startup["SpaceX-classic-mode"].value or false
local noSpace = settings.startup["SpaceX-no-space-sci"].value or false
local rampUp = settings.startup["SpaceX-ftl-ramp-up"].value or false


if not noSpace then
	local ftl = data.raw.technology["ftl-propulsion"]
	ftl.unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
 	    { "pm-metalloid-science-pack", 1 },
    	{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
	}
	ftl.unit.count = ftl.unit.count / 2
end


if data.raw.technology["exploration-satellite"] then
	data.raw.technology["exploration-satellite"].prerequisites = { "ftl-propulsion", "space-thrusters"}
  data.raw.technology["exploration-satellite"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	    { "pm-metalloid-science-pack", 1 },
	    { "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
    { "space-science-pack", 1 },
  }
end

if data.raw.technology["space-fluid-tanks"] then
	data.raw.technology["space-fluid-tanks"].prerequisites = {
		"ftl-propulsion"
	}
  data.raw.technology["space-fluid-tanks"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	    { "pm-metalloid-science-pack", 1 },
	    { "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end

if data.raw.technology["space-ai-robots"] then
	data.raw.technology["space-ai-robots"].prerequisites = {
		"ftl-propulsion",
		"belt-immunity-equipment",
		"fission-reactor-equipment",
	}
  data.raw.technology["space-ai-robots"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
   		{ "pm-metalloid-science-pack", 1 },
    	{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end


if data.raw.technology["space-assembly"] then
	data.raw.technology["space-assembly"].prerequisites = {
		"rocket-silo",
	}
  data.raw.technology["space-assembly"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
  }
end


if data.raw.technology["space-construction"] then
	data.raw.technology["space-construction"].prerequisites = {
		"space-assembly",
	}
  data.raw.technology["space-construction"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
  }
end


if data.raw.technology["space-casings"] then
	data.raw.technology["space-casings"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["space-casings"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
  	    { "pm-metalloid-science-pack", 1 },
 	    { "pm-alkaline-earth-metal-science-pack", 1 },
  }
end


if data.raw.technology["protection-fields"] then
	data.raw.technology["protection-fields"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["protection-fields"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
    	{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end


if data.raw.technology["fusion-reactor"] then
	data.raw.technology["fusion-reactor"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["fusion-reactor"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
  		{ "pm-metalloid-science-pack", 1 },
    	{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end


if data.raw.technology["habitation"] then
	data.raw.technology["habitation"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["habitation"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
    	{ "pm-metalloid-science-pack", 1 },
   	 	{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end


if data.raw.technology["space-thrusters"] then
	data.raw.technology["space-thrusters"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["space-thrusters"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	    { "pm-metalloid-science-pack", 1 },
  }
end


if data.raw.technology["life-support-systems"] then
	data.raw.technology["life-support-systems"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["life-support-systems"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	    { "pm-metalloid-science-pack", 1 },
  		{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end

if data.raw.technology["astrometrics"] then
	data.raw.technology["astrometrics"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["astrometrics"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
  		{ "pm-metalloid-science-pack", 1 },
   		{ "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end


if data.raw.technology["spaceship-command"] then
	data.raw.technology["spaceship-command"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["spaceship-command"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	    { "pm-metalloid-science-pack", 1 },
	    { "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end


if data.raw.technology["laser-cannon"] then
	data.raw.technology["laser-cannon"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["laser-cannon"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
  	    { "pm-metalloid-science-pack", 1 },
  	    { "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end

if data.raw.technology["fuel-cells"] then
	data.raw.technology["fuel-cells"].prerequisites = {
		"space-construction",
	}
  data.raw.technology["fuel-cells"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	    { "pm-metalloid-science-pack", 1 },
	    { "pm-alkaline-earth-metal-science-pack", 1 },
		{ "pm-advanced-advanced-advanced-transition-metal-science-pack", 1 },
		{ "pm-noble-gas-science-pack", 1 },
  }
end

if rampUp then
	data.raw.technology["ftl-theory-A"].unit.ingredients = {
		{ "automation-science-pack", 1 },
	}
	data.raw.technology["ftl-theory-B"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
	}
	data.raw.technology["ftl-theory-C"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
	}
	data.raw.technology["ftl-theory-D1"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
	}
	data.raw.technology["ftl-theory-D2"].unit.ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "pm-advanced-advanced-transition-metal-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "pm-post-transition-metal-science-pack", 1 },
		{ "pm-alkali-metal-science-pack", 1 },
 	    { "pm-metalloid-science-pack", 1 },
 	    { "pm-alkaline-earth-metal-science-pack", 1 },
	}
	if noSpace then
		data.raw.technology["ftl-propulsion"].unit.ingredients = {
			{ "automation-science-pack", 1 },
			{ "logistic-science-pack", 1 },
			{ "chemical-science-pack", 1 },
			{ "production-science-pack", 1 },
			{ "utility-science-pack", 1 },
			{ "space-science-pack", 1 },
		}
	end
end
