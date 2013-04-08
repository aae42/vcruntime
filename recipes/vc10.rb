#
# Author:: Yvo van Doorn (<yvo@opscode.com>)
# Cookbook Name:: vcruntime
# Recipe:: vc10
#
# Copyright:: 2013, Opscode, Inc.
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

include_recipe "windows"

case node['kernel']['machine']
when "x86_64"
  windows_package 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.30319' do
    source node['vc10']['x64']['tools']['pkg']['windows']['url']
    installer_type :custom
    options '/q'
  end
when /i[3-6]86/
  windows_package 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319' do
    source node['vc10']['x86']['tools']['pkg']['windows']['url']
    installer_type :custom
    options '/q'
  end
end
  