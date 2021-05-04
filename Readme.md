# IBeam-Core Protocol

## Changelog

### 0.3.0

- Adds Valuetype PNG and JPEG
- Change ParameterMetaType map to ParameterMetaDetails message, adding Min/Max and Options
- Add InputCurve indicator for client
- Add DescreteValueDetails for specifying special values outside of min/max and with labels
- Add dimension elementLabels
- Fix controllableWhileDisconnected Typo
- Add displayPrefix and displaySuffix to specify value renderings
- Add displayFloatPrecision to specify normal precision for float rendering
- Add fineSteps and coarseSteps to specify regular steps for fine and corse mode
### 0.2.5
- ?
### 0.2.0
- Adds incDecSteps
- Replaces instances with Dimension concept
- Adds path to details
- Adds invalid to value
- Make meta details and values a protobuf map

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

Just run `generatedocs.sh` to generate the documentation. To change the look of the output html, edit the `template.tmpl`

