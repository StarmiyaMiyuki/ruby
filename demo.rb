
x = 0

class MyError < StandardError; end

begin # try
    if x == 0
        raise MyError
    end
rescue MyError # expect as
    p 'noooo'
ensure # finally
    p 'finished'
end


