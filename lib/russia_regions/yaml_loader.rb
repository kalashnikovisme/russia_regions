require 'active_support/core_ext/hash'
require 'yaml'

module RussiaRegions
  class YamlLoader
    def self.yaml_object(filename)
      @_cache_russian_regions_yml ||= YAML.load_file(gem_root + '/yaml/' + filename + '.yml').with_indifferent_access
    end

    private

    def self.gem_root
      Gem::Specification.find_by_name('russia_regions').gem_dir
    end
  end
end
