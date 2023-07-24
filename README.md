# Access Control System

## College

- Instituto Superior de Engeharia de Lisboa (ISEL)

## Description

The Access Control System is a hardware and software project that allows access control to restricted areas using a User Identification Number (UIN) and Personal Identification Number (PIN). The system grants access to the restricted area after the correct UIN and PIN are entered. Upon successful access, the system can deliver a personalized text message to the user.

## Components

The Access Control System consists of the following components:

- A 12-key keypad
- A 2-line, 16-character Liquid Crystal Display (LCD)
- A Door Mechanism for opening and closing the door
- A maintenance key (M) for switching to Maintenance Mode
- A PC responsible for controlling the components and managing the system

## Actions in Access Mode

- **Access**: To gain access to the premises, the user must enter the three digits corresponding to the UIN, followed by the four-digit PIN. If the UIN and PIN combination is correct, the system displays the user's name and any stored message on the LCD, and it opens the door. Pressing the '*' key during message presentation removes the message from the system. All accesses are logged with date/time and UIN information in a Log File.

- **PIN Change**: After the authentication process, if the '#' key is pressed, the system prompts the user to enter a new PIN. The new PIN must be re-entered to confirm. The new PIN is registered only if the two entries match.

## Actions in Maintenance Mode

In Maintenance Mode (accessible through the PC's keyboard and screen), the following actions can be performed:

- **Add User**: The system assigns the first available UIN and waits for the system manager to enter the user's name and PIN. The name can have a maximum of 16 characters.

- **Remove User**: The system prompts the system manager to enter the UIN and asks for confirmation after displaying the user's name.

- **Set Message**: Allows associating an information message with a specific user to be displayed during the authentication process.

- **Shutdown**: Shuts down the Access Control System after confirmation from the user. The system stores user information in a text file (one user per line) that is loaded at the program's start and rewritten at the program's end. The system can store up to 1000 users, which can be added or removed through the PC's keyboard by the system manager.

## How to Use

Follow these steps to use the Access Control System:

### 1. Hardware Setup

- Connect the DE10-LITE FPGA board to your computer.
- Compile the hardware design using Quartus Prime.
- Use the programmer to upload the compiled hardware design to the DE10-LITE board.

### 2. Software Setup

- Ensure you have Java Runtime Environment (JRE) installed on your computer. If not, download and install the appropriate JRE version from Oracle's website (https://www.oracle.com/java/technologies/javase-jre8-downloads.html).

- Install Kotlin and IntelliJ IDEA (Community or Ultimate edition) on your computer. You can download the latest version of IntelliJ IDEA from JetBrains' official website (https://www.jetbrains.com/idea/).

### 3. Running the Access Control System

1. Open the project in IntelliJ IDEA:
   - Import the project folder containing `App.kt` and other Kotlin source files into IntelliJ IDEA.
   - Set up the project SDK to use the appropriate Kotlin version.

2. Build the project:
   - Build the Kotlin project to ensure all dependencies are resolved and the project is ready to run.

3. Run the Access Control System in Simulation Mode:
   - Inside `App.kt`, locate the `main` function.
   - Comment out or remove any hardware-related code, including the FPGA communication and hardware access code.
   - Uncomment or adjust any simulation-specific code if needed.
   - Run the `main` function to launch the Access Control System in simulation mode.

### 4. Accessing the System

1. The Access Control System will start in simulation mode and run on your computer.
2. Use the 12-key keypad (simulated through the console) to interact with the system.
3. For demonstration purposes, you can simulate access by entering a UIN followed by a valid PIN.
4. Use the appropriate keys (e.g., '#', '*') to trigger specific actions as mentioned in the "Actions in Access Mode" section.

### 5. Exiting the System

- To exit the Access Control System, press the appropriate key for system shutdown as mentioned in the "Actions in Maintenance Mode" section.

Note: The simulation mode allows you to test and demonstrate the functionality of the Access Control System without the need for physical hardware. 
For actual access control, follow the hardware setup steps to program the DE10-LITE board and run the `App.kt` with the hardware code to communicate with the FPGA.

## Requirements

To set up and run the Access Control System, you will need the following software and tools:

1. **Quartus Prime:** The Quartus Prime software is required to program and configure the hardware components of the system. You can download Quartus Prime
 from the official Intel website (https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/overview.html).

2. **IntelliJ IDEA:** IntelliJ IDEA is used for the software development aspect of the project. It is an Integrated Development Environment (IDE) that supports
 Kotlin and Java, making it ideal for programming the control logic and managing the software components of the Access Control System. 
 You can download IntelliJ IDEA from JetBrains' official website (https://www.jetbrains.com/idea/).

## Authors

- Gonçalo Frutuoso
- Franciso Saraiva
- Carolina Tavares

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
