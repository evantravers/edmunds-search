# Assumes you have staging and production urls
class LoadEnv
  def initialize(environment)
    @environment = environment
  end

  def execute
    puts "reading the file"
    env_file = Rails.root.join(".env.#{@environment}")
    values = File.read(env_file).split("\n").join(" ")
    puts "sending to heroku..."
    `heroku config:set #{values} -r #{@environment}`
    puts "done!"
  end
end
