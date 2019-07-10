local BasePlugin = require "kong.plugins.base_plugin"

local EchoHandler = BasePlugin:extend()

EchoHandler.PRIORITY = 2000
EchoHandler.VERSION = "0.1.0"

function EchoHandler:new()
    EchoHandler.super.new(self, "kong-plugin-body-log")

    self.echo_string = ""
end

function EchoHandler:access(conf)
    EchoHandler.super.access(self)
    self.echo_string = kong.request.get_raw_body(conf.request)
end

function EchoHandler:header_filter(conf)
    EchoHandler.super.header_filter(self)
    if self.echo_string ~= "" then
        kong.response.set_header(conf.responseHeader, self.echo_string)
        ngx_log(self.echo_string)
    end
end

return EchoHandler