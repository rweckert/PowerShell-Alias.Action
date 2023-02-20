# Alias.Action Scripts:

Alias.Action scripts help the user type less to navigate the system faster with more control. Each Alias.Action command has a prefix that when used in combination with the tab key allows quick navigation and easy access to information. Alias.Action scripts are organized into groups and each group has a specific prefix in calling the command.

### Installation:
Save Alias.Action scripts into a directory supported by your $PATH enviroinment variable. Alias.Action scripts rely only on the Microsoft Windows archetecture to produce output and 3rd party applications or programs are not needed.

### Alias.Action Prefix and Tab Key:

Using the tab key at the PowerShell terminal prompt is a essential time saver. These scripts are designed to take advantage of the tab key when calling a Alias.Action script to save typing resulting in quickly navigating or accessing areas of the system. For example using the cd.desktop navigation command. Type in the follwing command and press enter:

_cd.desktop_

**Tip:** After typing in " **cd.d** " press the tab key until the rest of the command appears and add a argument if needed, press enter.

### Prefix Grouping:

| Alias Prefix  | Description |
| ------------- | ------------- |
|   cd.  | Change directory |
|   ss.  | System Settings |
|   st.  | System Tools |
|   sm.  | System Management |
|   su.  | System Utility |
|   pm.  | Print Management |
|   ns.  | Network Security |

## Alias.Action Navigation:

All of Alias.Action navigation scripts start with " **cd.** ". Each of the navigation scripts have the following useful options:

| Argument | Description |
| ------------- | ------------- |
|   e      | Open location with Windows Explorer. |
|   l      | Open location with notepad showing list of all items. |
|   v      | Open location with grid-view listing of all items. |
|   i      | Open location and display item totals. |
|   a      | Version and license information. |
|   h      | Help documentation. |

- Each of the features above when exporting or viewing allow the terminal prompt to still be active.
- The V-View feature allows to review contents of the folder in a grid-view sortable table.
- The I-Information feature displays a clickable explorer link along with folder and file totals.

**Example** changing directory to the users downloads folder and viewing the contents in grid-view:

_cd.downloads v_

**Example** changing directoruy to the Windows\Fonts folder with information:

_cd.fonts i_


## Alias.Action System Settings:

All of Alias.Action System Settings scripts start with " **ss.** ". There are no arguments used when opening pages from Microsoft Settings.

**Example** using the " ss. " prefix to load the System Setting "Lock Screen" options window:

_ss.lockscreen_


## Alias.Action System Tools:

All of Alias.Action System Settings scripts start with " **st.** ".

## Alias.Action System Management:

All of Alias.Action System Management scripts start with " **sm.** ".

## Alias.Action Print Management:

All of Alias.Action System Management scripts start with " **pm.** ".

## Alias.Action Network Security:

All of Alias.Action System Management scripts start with " **ns.** ".

