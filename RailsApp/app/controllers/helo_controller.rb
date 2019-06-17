class HeloController < ApplicationController
layout 'helo'

    # def index
    #     if params['msg'] != nil then
    #         @title = params['msg']
    #     else
    #         @title = 'index'
    #     end
    #     @msg = 'this is redirect sample...'
    # end

    # def index
    #     if request.post? then
    #         @title = 'Result'
    #         if params['s1'] then
    #             @msg = 'you selected:'
    #             for val in params['s1']
    #                 @msg += val + ''
    #             end
    #         else
    #             @msg = 'not selected'
    #         end
    #     else
    #         @title = 'index'
    #         @msg = 'select radio button...'
    #     end
    # end

    # def other
    #     redirect_to action  index , params:{'msg':'form other page'}
    # end
    
    def index
        @header = 'layout sample'
        @footer = 'copyright SYODA-Tuyano 2016'
        @title = 'New Layout'
        @msg = 'this is sample page!'
    end


end
