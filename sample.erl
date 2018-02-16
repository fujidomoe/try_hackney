-module(sample).
-compile(export_all).

try_hackney_request() ->
  application:ensure_all_started(hackney),
  Method = get,
  URL = <<"https://friendpaste.com">>,
  Headers = [],
  Payload = <<>>,
  Options = [],
  {ok, StatusCode, RespHeaders, ClientRef} = hackney:request(Method, URL, Headers, Payload, Options),
  io:format("~p",[StatusCode]),
  io:format("~p",[RespHeaders]),
  io:format("~p",[ClientRef]).
