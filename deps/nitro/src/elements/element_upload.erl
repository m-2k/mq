-module(element_upload).
-compile(export_all).
-include_lib("nitro/include/nitro.hrl").

render_element(#upload{id=Id}) ->
    Uid = case Id of undefined -> n2o:temp_id(); I -> I end,
    nitro:wire("ftp_file=undefined;"),
    bind(ftp_open,  click,  nitro:f("qi('~s').click(); event.preventDefault();", [nitro:to_list(Uid)])),
    bind(ftp_start, click,  "ftp.start(ftp_file);"),
    bind(ftp_stop,  click,  "ftp.stop(ftp_file);"),
    bind(nitro:to_atom(Uid), change, "ftp_file=ftp.init(this.files[0]);"),
    Upload = #panel  { body = [
             #input  { id   = Uid,         type    = <<"file">>, style = "display:none" },
             #span   { id   = ftp_status,  body    = [] },
             #span   { body = [
             #button { id   = ftp_open,    body = "Browse" },
             #button { id   = ftp_start,   body = "Upload" },
             #button { id   = ftp_stop,    body = "Stop" }
    ] } ] }, n2o:render(Upload).

bind(Control,Event,Code) ->
    nitro:wire(#bind{target=Control,type=Event,postback=Code}).
