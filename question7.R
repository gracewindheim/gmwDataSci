#question 7

ppv = function(sens, spec, prev) {
  numerator = (sens*prev)
  denom = (sens*prev) + ((1-spec)*(1-prev))
  result = numerator / denom
  sprintf("PPV = %f", result)
}