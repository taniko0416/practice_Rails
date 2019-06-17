class ApplicationController < ActionController::Base

    def index
        if params['msg'] != nil then
            msg = 'Hello,' + params['msg'] + '!'
        else
            msg = 'this is sample page.'
        
        end    
        html = '
        <html>
            <body>
                <h1>Sample Page</h1>
                <p>' + msg + '</p>
            <body>
        </html>
        '
        render html:html.html_safe
        # render plain:"hello,This is Rails sample page!!"
    end

end
