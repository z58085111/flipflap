require 'yaml'
# Module that can be included (mixin) to take and output Yaml data
module YamlBuddy
	def take_yaml(yaml)
		@data = YAML::load(yaml)
	end

	def to_yaml
		@data[1..-1].to_yaml
	end
end