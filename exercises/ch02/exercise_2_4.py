"""Exercise 2-4: Control ID Anatomy

Given a control ID string like "AC-2(3)", use string methods to extract the
family prefix, base control number, and enhancement number.

See grc_python_crash_course.md for full requirements.
"""

control_id = "AC-2(3)"
parts = control_id.split("-")
print(parts)
family_prefix = parts[0]
rest = parts[1]
base_number = rest.split("(")[0]
enhancement_number = rest.split("(")[1].strip(")")

print(f"Family Prefix: {family_prefix}")
print(f"Base Control: {base_number}")
print(f"Enhancement Number: {enhancement_number}")







