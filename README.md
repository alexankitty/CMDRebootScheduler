# CMDRebootScheduler
A batch file that lets you set a reboot time without requiring usage of task scheduler. (For Scenarios where task scheduler may be inaccessible or hung)

# Usage
Change line 3 reboottime variable to anytime you need in hh:mm format.
Throw it in a startup script location for a daily reboot that is independent of task scheduler, or stick it somewhere for a run once reboot using any script execution method of your choice

Note: For intl users or regions that have different time formats (specifically any situations where %time% displays something other than hh:mm:ss.ms) you will need to update the delims accordingly (Lines 5 and 12).
