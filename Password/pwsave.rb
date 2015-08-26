class DoThings
def hardcoded_password
DB.save
end

def password_saved_into_file
File.save
end

def do_stuff
password_saved_into_file
end
end

thingy = DoThings.new
thingy.do_stuff