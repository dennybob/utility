# Fanuc Engrave Macro

## Purpose
  - General Appication - any part, callable by G-code
  - James Hardie Bushings:
    - S:\PMI customer jobs\James Hardie\Biele Press
    - S:\PMI customer jobs\James Hardie\M7105013105-01 Bushing Bottom Plane

## To Do
  - [X] Decide which font to use
  - [ ] Program characters
    - [ ] Uppercase alphabet (A-Z)
    - [ ] Numbers (0-9)
    - [ ] Other
      - octothorpe "#"
      - ampersand "&"
      - dash "-"
      - parethesis left "(" and right ")"
      - plus "+"
      - slash "/"
      - backslash "\\"
      - asterisk "*"
    > Check characters at [G-Code Q'n'dirty Toolpath Simulator](https://nraynaud.github.io/webgcode/)
    > 1) Replace all "#26" with ".1" to get z-moves to work
    > 2) Feedrates "#8" and "#9" don't need to be changed
  - [ ] Develop macro
  - [ ] Find appropriate G-code for execution (if it works with modal call)
    - For all Fanuc mills (Kasuga, Mori, Doosan)
  - [ ] Debug
  - [ ] Case testing
  - [ ] Create documention (doc.md)
