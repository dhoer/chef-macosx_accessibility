actions :insert, :remove, :enable, :disable
default_action :insert

attribute :items, kind_of: Array, required: true
