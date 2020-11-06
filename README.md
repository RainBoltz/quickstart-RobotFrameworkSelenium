# Quick Start for RobotFramework + Selenium
 a quick start guide for newbies like me... 咩噗😭
 
### installation *(briefly)*
 1. **install packages for python**
     ```bash
     python3 -m pip install --upgrade robotframework
     python3 -m pip install --upgrade robotframework-seleniumlibrary
     ```
 2. **download webdriver (chromedriver recommended)**
    click [here](https://chromedriver.chromium.org/downloads) to redirect to the download page, MAKE SURE THE VERSION YOU DOWNLOAD MATCHES THE VERSION OF YOUR CURRENT BROWSER!
 3. **in most cases we add the paths to variable `PATH`, but it's not necessary.**

### Practical Template
 1. **file structure**
    ```
    .
    +-- tests/
        +-- testrun1.robot
        +-- testrun2.robot
        +-- testrun3.robot
        +-- resource1.robot
        +-- resource2.robot
        +-- mylibrary1.py
        +-- mylibrary2.py
    ```
    ...as we can simply run all tests by command `robot ./tests`.
 2. **code structure**
    - coding notes:
        - the indents and the delimiter between variables are **4 or more spaces**, not tabs(\t)
        - spaces in the name of variables is available
        - uppercase or lowercase makes no difference while calling the variables
    - a piece of code is usually composed of 4 sections:
        - Settings
        - Variables
        - Test Cases
        - Keywords
    - in every section, you have to define the variables or functions (keywords) you need.

        ---
    1. `Settings`:
        - `Documentation`: clear comments for report.
        - `Library`: import libraries for the utility functions. Usually we import `SeleniumLibrary`.
        - `Resource`: if we have a *resource.robot* already, we will import it to our source code by this command. usually we don't have to call the `Library` again because it should already be imported in *resource.robot*.
    2. `Variables`:
        - `${VARIABLE NAME}    value` for each line
        - these variables are global variables, can be used anywhere
    3. ...
    4. ...
---
**[TODO]**

 