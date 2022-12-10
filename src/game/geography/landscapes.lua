landscapeList = {
  ["desert"] = function(params)
    return params.elevation > 10 and
           params.temperature > 80 and
           params.rainfall < 10 
  end,
  ["forest"] = function(params)
    return params.elevation > 10 and
           params.temperature > 20 and
           params.temperature < 70 and
           params.rainfall > 30
  end,
  ["jungle"] = function(params)
    return params.elevation > 10 and
           params.temperature > 70 and
           params.rainfall > 30
  end,
  ["rainforest"] = function(params)
    return params.elevation > 10 and
           params.temperature > 70 and
           params.rainfall > 90
  end,
  ["tundra"] = function(params)
    return params.elevation > 10 and
           params.temperature < 20
  end,
  ["plains"] = function(params)
    return params.elevation > 10 and
           params.temperature > 20 and
           params.temperature < 80
  end,
  ["sea"] = function(params)
    return params.elevation < 10
  end,
}
