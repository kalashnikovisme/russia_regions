require 'russia_regions/version'
require 'russia_regions/yaml_loader'

module RussiaRegions
  def self.name_list
    YamlLoader.yaml_object('regions_list')[:regions]
  end
end
