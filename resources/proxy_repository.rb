#
# Cookbook Name:: nexus
# Resource:: proxy_repository
#
# Author:: Kyle Allan (<kallan@riotgames.com>)
# Copyright 2013, Riot Games
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :create, :delete, :update
default_action :create

attribute :name, :kind_of => String, :name_attribute => true
attribute :description, :kind_of => String, :default => nil
attribute :url, :kind_of                  => String, :required => true
attribute :policy, :kind_of               => String, :default => nil
attribute :publisher, :kind_of            => [TrueClass, FalseClass], :default => nil
attribute :subscriber, :kind_of           => [TrueClass, FalseClass], :default => nil
attribute :preemptive_fetch, :kind_of     => [TrueClass, FalseClass], :default => false
attribute :repo_provider, :kind_of        => String, :default => nil
