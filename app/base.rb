module Amnesia  
  class << self
    def new
      DataMapper.setup(:default, config[:db])
      Sinatra::Application
    end
    
    def config
      @config ||= YAML.load_file('amnesia.yml')[Sinatra::Application.environment]
    end
  end
end