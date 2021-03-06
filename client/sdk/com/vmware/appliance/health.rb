#---------------------------------------------------------------------------
# Copyright 2016 VMware, Inc.  All rights reserved.
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.health.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
    module Vmware
        module Appliance
            module Health
            end
        end
    end
end

module Com::Vmware::Appliance::Health

    # ``Com::Vmware::Appliance::Health::Applmgmt``   class  provides  methods  Get health status of applmgmt services.
    class Applmgmt < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.applmgmt')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::StringType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get health status of applmgmt services.
        #
        # @return [String]
        #     health status.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end


    end


    # ``Com::Vmware::Appliance::Health::Databasestorage``   class  provides  methods  Get database storage health.
    class Databasestorage < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.databasestorage')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::Databasestorage::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get database storage health.
        #
        # @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
        #     Database storage health.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::Databasestorage::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.databasestorage.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::Databasestorage::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


    # ``Com::Vmware::Appliance::Health::Load``   class  provides  methods  Get load health.
    class Load < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.load')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::Load::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get load health.
        #
        # @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
        #     Load health.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::Load::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.load.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::Load::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


    # ``Com::Vmware::Appliance::Health::Mem``   class  provides  methods  Get memory health.
    class Mem < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.mem')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::Mem::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get memory health.
        #
        # @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
        #     Memory health.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::Mem::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.mem.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::Mem::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


    # ``Com::Vmware::Appliance::Health::Softwarepackages``   class  provides  methods  Get information on available software updates available in remote VUM repository.
    class Softwarepackages < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.softwarepackages')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get information on available software updates available in remote VUM repository. red indicates that security updates are available. orange indicates that non security updates are available. green indicates that there are no updates available. gray indicates that there was an error retreiving information on software updates.
        #
        # @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
        #     software updates available.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.softwarepackages.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


    # ``Com::Vmware::Appliance::Health::Storage``   class  provides  methods  Get storage health.
    class Storage < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.storage')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::Storage::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get storage health.
        #
        # @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
        #     Storage health.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::Storage::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.storage.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::Storage::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


    # ``Com::Vmware::Appliance::Health::Swap``   class  provides  methods  Get swap health.
    class Swap < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.swap')

        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::Swap::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get swap health.
        #
        # @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
        #     Swap health.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::Swap::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.swap.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::Swap::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


    # ``Com::Vmware::Appliance::Health::System``   class  provides  methods  Get overall health of system.
    class System < VAPI::Bindings::VapiService

        protected

        # static metamodel definitions
        @@service_id = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.health.system')

        @@lastcheck_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('lastcheck', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::DateTimeType.instance,
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])
        @@get_info = VAPI::Bindings::OperationInfo.new(
            VAPI::Core::OperationIdentifier.new('get', @@service_id),
            VAPI::Bindings::OperationInputType.new,
            VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Health::System::HealthLevel'),
            {
                'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error'),

            },
            [],
            [])

        @@service_info = VAPI::Bindings::ServiceInfo.new(@@service_id, {
            'lastcheck' => @@lastcheck_info,
            'get' => @@get_info,
        })

        public

        # Constructs a new instance.
        #
        # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
        def initialize(config)
            super(config, @@service_info)
        end


        # Get last check timestamp of the health of the system.
        #
        # @return [DateTime]
        #     System health last check timestamp.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def lastcheck()
            invoke_with_info(@@lastcheck_info)
        end


        # Get overall health of system.
        #
        # @return [Com::Vmware::Appliance::Health::System::HealthLevel]
        #     System health.
        # @raise [Com::Vmware::Vapi::Std::Errors::Error]
        #     Generic error
        def get()
            invoke_with_info(@@get_info)
        end



        # ``Com::Vmware::Appliance::Health::System::HealthLevel``   enumerated type  Defines health levels
        # @!attribute [rw] orange
        #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
        #     The service health is degraded. The service might have serious problems
        # @!attribute [rw] gray
        #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
        #     No health data is available for this service.
        # @!attribute [rw] green
        #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
        #     Service is healthy.
        # @!attribute [rw] red
        #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
        #     The service is unavaiable and is not functioning properly or will stop functioning soon.
        # @!attribute [rw] yellow
        #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
        #     The service is healthy state, but experiencing some levels of problems.
        class HealthLevel < VAPI::Bindings::VapiEnum

            class << self
                # Holds (gets or creates) the binding type metadata for this enumeration type.
                # @scope class
                # @return [VAPI::Bindings::EnumType] the binding type
                def binding_type
                    @binding_type ||= VAPI::Bindings::EnumType.new(
                        'com.vmware.appliance.health.system.health_level',
                        HealthLevel)
                end

                # Converts from a string value (perhaps off the wire) to an instance
                # of this enum type.
                # @param value [String] the actual value of the enum instance
                # @return [HealthLevel] the instance found for the value, otherwise
                #         an unknown instance will be built for the value
                def from_string(value)
                    begin
                        const_get(value)
                    rescue NameError
                        HealthLevel.new('UNKNOWN', value)
                    end
                end
            end

            private

            # Constructs a new instance.
            # @param value [String] the actual value of the enum instance
            # @param unknown [String] the unknown value when value is 'UKNOWN'
            def initialize(value, unknown=nil)
                super(self.class.binding_type, value, unknown)
            end

            public

            # @!attribute [rw] orange
            #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
            #     The service health is degraded. The service might have serious problems
            ORANGE = HealthLevel.new('ORANGE')

            # @!attribute [rw] gray
            #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
            #     No health data is available for this service.
            GRAY = HealthLevel.new('GRAY')

            # @!attribute [rw] green
            #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
            #     Service is healthy.
            GREEN = HealthLevel.new('GREEN')

            # @!attribute [rw] red
            #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
            #     The service is unavaiable and is not functioning properly or will stop functioning soon.
            RED = HealthLevel.new('RED')

            # @!attribute [rw] yellow
            #     @return [Com::Vmware::Appliance::Health::System::HealthLevel]
            #     The service is healthy state, but experiencing some levels of problems.
            YELLOW = HealthLevel.new('YELLOW')

        end


    end


end
