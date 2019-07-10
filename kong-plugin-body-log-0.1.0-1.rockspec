package = "kong-plugin-body-log"
version = "0.1.0-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-plugin-body-log.handler"] = "kong/plugins/kong-plugin-body-log/handler.lua",
      ["kong.plugins.kong-plugin-body-log.schema"] = "kong/plugins/kong-plugin-body-log/schema.lua"
   }
}
