module Paperclip
    module Interpolations
        def post_id attachment, style_name
            attachment.instance.post_id
        end
        
        def type attachment, style_name
            attachment.instance.type
        end
    end
end
