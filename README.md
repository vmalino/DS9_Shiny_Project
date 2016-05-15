# Temperature Converter

This R application created to test basic features of the Shiny package. The application allows to select one of the temparature scales (Fahrenhiet or Celsius), to enter temperature value, and to get the result of the converion to another scale.

### Input Elements
There are 3 input elements:
- Input temperature scale selector (by default: Fahrenhiet)
- Slider which allows to select temperature value from the range
- Textbox which allows to enter temperature value manually

The Temperature Value textbox is set by the slider. However, the value entered manually does not change the slider.

The slider range is (-50, 50) degree Celsius and respective values Fahreheit (-58, 122). Such slider settings helps to demonstrate the difference between two temperature scales.

### Output Elements
The output is the Temperature Scale to which the conversion was made and the Temperature Value - result of the conversion.
