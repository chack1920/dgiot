%%--------------------------------------------------------------------
%% Copyright (c) 2016-2017 John liu <34489690@qq.com>.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%--------------------------------------------------------------------

%% @doc dgiot_xinchuangwei Application
-module(dgiot_xinchuangwei_app).
-include("dgiot_xinchuangwei.hrl").
-behaviour(application).
-emqx_plugin(?MODULE).

%% Application callbacks
-export([start/2, stop/1]).


%%--------------------------------------------------------------------
%% Application callbacks
%%--------------------------------------------------------------------

start(_StartType, _StartArgs) ->
    dgiot_data:init(?DGIOT_xinchuangwei_DTU),
    dgiot_xinchuangwei_sup:start_link().


stop(_State) ->
    ok.