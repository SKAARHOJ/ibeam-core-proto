# IBeam-Core Protocol

## Definitions

### Core
The Core implements some type of Protocol, that is used by one or more Devices.

### Device
A Device represents a device like a camera, videomixer etc. that uses the Protocol implemented in this device Core.
One Device uses one Model. A device has only one Core ??? // actually, but maybe...

### Model
A Model describes a Set of Parameters.
One Model has multiple Parameters. A Model can be used by multiple devices. 

### Parameter

## Generate Documentation 
For the documentation we use the tool [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc)
Just run `generatedocs.sh` to generate the documentation.