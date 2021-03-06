# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ReplicapoolV1beta2
      
      # An Instance Group Manager resource.
      class InstanceGroupManager
        include Google::Apis::Core::Hashable
      
        # The autohealing policy for this managed instance group. You can specify only
        # one value.
        # Corresponds to the JSON property `autoHealingPolicies`
        # @return [Array<Google::Apis::ReplicapoolV1beta2::ReplicaPoolAutoHealingPolicy>]
        attr_accessor :auto_healing_policies
      
        # The base instance name to use for instances in this group. The value must be a
        # valid RFC1035 name. Supported characters are lowercase letters, numbers, and
        # hyphens (-). Instances are named by appending a hyphen and a random four-
        # character string to the base instance name.
        # Corresponds to the JSON property `baseInstanceName`
        # @return [String]
        attr_accessor :base_instance_name
      
        # [Output only] The time the instance group manager was created, in RFC3339 text
        # format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output only] The number of instances that currently exist and are a part of
        # this group. This includes instances that are starting but are not yet RUNNING,
        # and instances that are in the process of being deleted or abandoned.
        # Corresponds to the JSON property `currentSize`
        # @return [Fixnum]
        attr_accessor :current_size
      
        # An optional textual description of the instance group manager.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output only] Fingerprint of the instance group manager. This field is used
        # for optimistic locking. An up-to-date fingerprint must be provided in order to
        # modify the Instance Group Manager resource.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output only] The full URL of the instance group created by the manager. This
        # group contains all of the instances being managed, and cannot contain non-
        # managed instances.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # [Output only] A server-assigned unique identifier for the resource.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The full URL to an instance template from which all new instances will be
        # created.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        # [Output only] The resource type. Always replicapool#instanceGroupManager.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the instance group manager. Must be 1-63 characters long and
        # comply with RFC1035. Supported characters include lowercase letters, numbers,
        # and hyphens.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output only] The fully qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The full URL of all target pools to which new instances in the group are added.
        # Updating the target pool values does not affect existing instances.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        # [Output only] The number of instances that the manager is attempting to
        # maintain. Deleting or abandoning instances affects this number, as does
        # resizing the group.
        # Corresponds to the JSON property `targetSize`
        # @return [Fixnum]
        attr_accessor :target_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_healing_policies = args[:auto_healing_policies] unless args[:auto_healing_policies].nil?
          @base_instance_name = args[:base_instance_name] unless args[:base_instance_name].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @current_size = args[:current_size] unless args[:current_size].nil?
          @description = args[:description] unless args[:description].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @group = args[:group] unless args[:group].nil?
          @id = args[:id] unless args[:id].nil?
          @instance_template = args[:instance_template] unless args[:instance_template].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @target_pools = args[:target_pools] unless args[:target_pools].nil?
          @target_size = args[:target_size] unless args[:target_size].nil?
        end
      end
      
      # 
      class InstanceGroupManagerList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of instance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ReplicapoolV1beta2::InstanceGroupManager>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class AbandonInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The names of one or more instances to abandon. For example:
        # ` 'instances': [ 'instance-c3po', 'instance-r2d2' ] `
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] unless args[:instances].nil?
        end
      end
      
      # 
      class DeleteInstancesRequest
        include Google::Apis::Core::Hashable
      
        # Names of instances to delete.
        # Example: 'instance-foo', 'instance-bar'
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] unless args[:instances].nil?
        end
      end
      
      # 
      class RecreateInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The names of one or more instances to recreate. For example:
        # ` 'instances': [ 'instance-c3po', 'instance-r2d2' ] `
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] unless args[:instances].nil?
        end
      end
      
      # 
      class SetInstanceTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The full URL to an Instance Template from which all new instances will be
        # created.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_template = args[:instance_template] unless args[:instance_template].nil?
        end
      end
      
      # 
      class SetTargetPoolsRequest
        include Google::Apis::Core::Hashable
      
        # The current fingerprint of the Instance Group Manager resource. If this does
        # not match the server-side fingerprint of the resource, then the request will
        # be rejected.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # A list of fully-qualified URLs to existing Target Pool resources. New
        # instances in the Instance Group Manager will be added to the specified target
        # pools; existing instances are not affected.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @target_pools = args[:target_pools] unless args[:target_pools].nil?
        end
      end
      
      # An operation resource, used to manage asynchronous API requests.
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output only] An optional identifier specified by the client when the mutation
        # was initiated. Must be unique for all operation resources in the project.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Output Only] The time that this operation was requested, in RFC3339 text
        # format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] The time that this operation was completed, in RFC3339 text
        # format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors occurred during processing of this operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ReplicapoolV1beta2::Operation::Error]
        attr_accessor :error
      
        # [Output only] If operation fails, the HTTP error message returned.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # [Output only] If operation fails, the HTTP error status code returned.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] Unique identifier for the resource, generated by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested, in RFC3339 text
        # format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output only] Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output only] Type of the operation. Operations include insert, update, and
        # delete.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess at when the operation will be complete. This
        # number should be monotonically increasing as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] URL of the region where the operation resides. Only available
        # when performing regional operations.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server, in
        # RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] Status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] Unique target ID which identifies a particular incarnation of
        # the target.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # [Output only] URL of the resource the operation is mutating.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # [Output Only] User who requested the operation, for example: user@example.com.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # [Output Only] If there are issues with this operation, a warning is returned.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ReplicapoolV1beta2::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] URL of the zone where the operation resides. Only available when
        # performing per-zone operations.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] unless args[:client_operation_id].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @error = args[:error] unless args[:error].nil?
          @http_error_message = args[:http_error_message] unless args[:http_error_message].nil?
          @http_error_status_code = args[:http_error_status_code] unless args[:http_error_status_code].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @target_id = args[:target_id] unless args[:target_id].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
          @user = args[:user] unless args[:user].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
        
        # [Output Only] If errors occurred during processing of this operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ReplicapoolV1beta2::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] unless args[:errors].nil?
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request which caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] unless args[:code].nil?
              @location = args[:location] unless args[:location].nil?
              @message = args[:message] unless args[:message].nil?
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output only] Metadata for this warning in key:value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ReplicapoolV1beta2::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] Metadata key for this warning.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] Metadata value for this warning.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # 
      class OperationList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ReplicapoolV1beta2::Operation>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class ReplicaPoolAutoHealingPolicy
        include Google::Apis::Core::Hashable
      
        # The action to perform when an instance becomes unhealthy. Possible values are
        # RECREATE or REBOOT. RECREATE replaces an unhealthy instance with a new
        # instance that is based on the instance template for this managed instance
        # group. REBOOT performs a soft reboot on an instance. If the instance cannot
        # reboot, the instance performs a hard restart.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # The URL for the HealthCheck that signals autohealing.
        # Corresponds to the JSON property `healthCheck`
        # @return [String]
        attr_accessor :health_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] unless args[:action_type].nil?
          @health_check = args[:health_check] unless args[:health_check].nil?
        end
      end
    end
  end
end
