# Intense Night Light

Magisk module to make Night Light more intense and decrease the minimum brightness.  

### Use at your own risk

This module overrides:

- `config_nightDisplayColorTemperatureMin` and sets it to 0K, which allows the filter to be made much more intense.
- `config_screenBrightnessSettingMinimumFloat` and sets it to 0.0, which makes the minimum brightness lower than default.  

Credit goes to [ysc3839/magisk-permissionreviewenabler](https://github.com/ysc3839/magisk-permissionreviewenabler) and [jamerst/magisk-intense-night-light](https://github.com/jamerst/magisk-intense-night-light) for the base module and the idea!
