module ApplicationHelper
    def flash_message
        messages = ""
        [:notice, :info, :warning, :error].each {|type|
            if flash[type]
                messages += "<div class=\"base-alert #{type}\" role='alert'>#{flash[type]}</div>"
            end
        }
        messages.html_safe
    end

    def remove_at_sign(str)
        str.gsub('@', '')
    end 
    
    def get_first_name(str)
        str.split(' ')[0]
    end 
end
