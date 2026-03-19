"""Exercise 2-3: Severity Arithmetic

Assign numeric severity values (Critical=4, High=3, Medium=2, Low=1),
calculate the average of three findings, and print it as a float and rounded.

See grc_python_crash_course.md for full requirements.
"""
critical = 4
high = 3
medium = 2
low = 1 
average_of_3_findings = (critical + high + medium) / 3
print(average_of_3_findings)
print(round(average_of_3_findings, 1))
