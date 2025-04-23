class User < ApplicationRecord
  STATES = {
    DE: %w[Baden-Württemberg Bavaria Berlin Brandenburg Bremen Hamburg Hesse Lower_Saxony Mecklenburg-Vorpommern North_Rhine-Westphalia Rhineland-Palatinate Saarland Saxony Saxony-Anhalt Schleswig-Holstein Thuringia],
    US: %w[Alabama Alaska Arizona Arkansas California Colorado Connecticut Delaware Florida Georgia Hawaii Idaho Illinois Indiana Iowa Kansas Kentucky Louisiana Maine Maryland Massachusetts Michigan Minnesota Mississippi Missouri Montana Nebraska Nevada New_Hampshire New_Jersey New_Mexico New_York North_Carolina North_Dakota Ohio Oklahoma Oregon Pennsylvania Rhode_Island South_Carolina South_Dakota Tennessee Texas Utah Vermont Virginia Washington West_Virginia Wisconsin Wyoming]
  }.freeze

  CANADIAN_PROVINCES = %w[Alberta British_Columbia Manitoba New_Brunswick Newfoundland_and_Labrador Northwest_Territories Nova_Scotia Nunavut Ontario Prince_Edward_Island Quebec Saskatchewan Yukon]
end