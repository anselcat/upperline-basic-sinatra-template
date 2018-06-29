# class Camp
#     attr_accessor :category, :time, :price
#     def initialize(category, time, price)
#         @category=category
#         @time=time
#         @price=price 
#     end

# def hash
# @answers={:a => "/result1", 
# :b => "/result2", 
# :c => "/result3", 
# :d => "/result4", 
# :e => "/result5", 
# :f => "/result6", 
# :g => "/result7", 
# :h => "/result8", 
# :i => "/result9"}
# end 

# def camp_match
#     if @category=="Adventure"
#         if @time=="Day"
#             return @answers[:a]
#         elsif @time=="Overnight"
#             return @answers[:b]
#         else @time=="Either"
#             return @answers[:c]
#         end 
#     elsif @category=="Educational"
#         if @time=="Day"
#             return @answers[:d]
#         elsif @time=="Overnight"
#             return @answers[:e]
#         else @time=="Either"
#             return @answers[:f]
#         end
#     else @category=="Sports"
#         if @time=="Day"
#             return @answers[:g]
#         elsif @time=="Overnight"
#             return @answers[:h]
#         else @time=="Either"
#             return @answers[:i]
#         end
#     end
# end  
# end
def results(user_value)
    if user_value == 11
        "adventure_day"
    elsif user_value == 12
        "adventure_overnight"
    elsif user_value == 13
        "adventure_either"
    elsif user_value == 21
        "educational_day"
    elsif user_value == 22
        "educational_overnight"
    elsif user_value == 23
        "educational_either"
    elsif user_value == 31
        "sports_day"
    elsif user_value == 32
        "sports_overnight"
    elsif user_value == 33
        "sports_either"
    end
        
end
