# IBeam-Core Protocol

## Changelog
### 0.3.5

- Add DeviceCategory to CoreInfo
- Add HasModelImages to CoreInfo

- Add GetModelImages RPC Request

### 0.3.4

- Add TestTrigger GenericType
### 0.3.3

- Add acceptance threashold

### 0.3.2

- Remove Controlled Incremental
- Add GetCoreConfig, GetCoreConfigSchema, SetCoreConfig rpc
- Add RestartCore rpc
- Add Required and Description field on meta values
- Remove InputCuve Enum
- Add InputCurveExpo value for specifying exponential curves for Ints and Floats

### 0.3.1

- Add error unavailable

### 0.3.0

- Adds Valuetype PNG and JPEG
- Change ParameterMetaType map to ParameterMetaDetails message, adding Min/Max and Options
- Add InputCurve indicator for client
- Add DescreteValueDetails for specifying special values outside of min/max and with labels
- Add MinUpdate and MaxUpdate for dynamicMinMax parameters
- Rename Optionlist to optionListUpdate
- Add dimension elementLabels
- Fix controllableWhileDisconnected Typo
- Add displayPrefix and displaySuffix to specify value renderings
- Add displayFloatPrecision to specify normal precision for float rendering
- Add fineSteps and coarseSteps to specify regular steps for fine and corse mode
### 0.2.5
- change floatprecision to double due to javascript missbehaviour
- make incDecSteps Limits ints

### 0.2.4
- rename RangeViolation to StepSizeViolation
- make incDecSteps Limits floats

### 0.2.3
- add v prefix to version
- move connectiontype to CoreInfo

### 0.2.2
- remove ParameterMetaDescription

### 0.2.1
- add controllableWhileDisconnected
- fix dimensionID typo
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

