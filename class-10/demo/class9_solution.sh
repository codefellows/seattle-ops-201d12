# Script Name: Solution Ops 201 Ops Challenge Class 14
# Author: Roger Huba
# Date of last revision: 11/03/2023


# Task 1: Output all events from the System event log that occurred in the last 24 hours to a file named last_24.txt.

$Begin = Get-Date -Date '11/2/2023 00:00:00'
$End = Get-Date -Date '11/2/2023 23:59:59'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End > C:\Users\roger\Desktop\last_24.txt

# Task 2: Output all "error" type events from the System event log to a file named errors.txt.
# NOTE: Username will vary in filepath

Get-EventLog -LogName System -EntryType Error > C:\Users\roger\Desktop\errors.txt

# Task 3: Print to the screen all events with ID of 16 from the System event log.

Get-EventLog -LogName System -InstanceId 16

# Task 4: Print to the screen the most recent 20 entries from the System event log.'

Get-EventLog -LogName System -Newest 20

# Task 5: Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the ... and show the entire text).

$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending | format-table -auto

# End
