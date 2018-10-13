class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
   @files[filename] = time     
    puts "File #{filename} has been created at #{time}"
  end

def Computer.get_users
  return @@users
 end
end
