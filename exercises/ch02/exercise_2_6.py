"""Exercise 2-6: FedRAMP Baseline Count

Store FedRAMP High (421), Moderate (325), and Low (156) control counts in
variables. Calculate and print the difference between High and Moderate.

See grc_python_crash_course.md for full requirements.
"""

fedramp_high_controls = 421
fedramp_moderate_controls = 325
fedramp_low_controls = 156

difference_between_high_and_moderate = fedramp_high_controls - fedramp_moderate_controls

print(f"FedRAMP High requires {difference_between_high_and_moderate} more controls than Moderate.")