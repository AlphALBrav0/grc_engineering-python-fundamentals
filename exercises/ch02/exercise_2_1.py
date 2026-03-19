"""Exercise 2-1: Control Variables

Create variables for a NIST 800-53 control (control_id, control_name,
control_family) and print a formatted message using an f-string.

See grc_python_crash_course.md for full requirements.
"""

control_id = "AC-2"
control_name = "Account Management"
control_family = "Access Control"
print(f"{control_id} ({control_name}) belongs to the {control_family} family.")
