# createSimFile.py
# This script converts engrave.nc into code readable by the simulator

# Save program as a list, line-by-line so mulitiple pointers don't occur
prog = []
with open('/Users/dennybob/Documents/GitHub/utility/dev/engrave macro/engrave.nc', 'r') as file:
    for line in file:
        prog.append(line.strip())

# Remove lines that start with '%', 'O', '(', '#', 'IF', 'GOTO', 'G17'
prog = [x for x in prog if not x.startswith('%')] 
prog = [x for x in prog if not x.startswith('%')]
prog = [x for x in prog if not x.startswith('O')]
prog = [x for x in prog if not x.startswith('(')]
prog = [x for x in prog if not x.startswith('#')]
prog = [x for x in prog if not x.startswith('IF')]
prog = [x for x in prog if not x.startswith('GOTO')] 
prog = [x for x in prog if not x.startswith('G17')]

# Remove lines that start with 'N90' or 'N91' or 'N999'
prog = [x for x in prog if not x.startswith('N90')]
prog = [x for x in prog if not x.startswith('N91')]
prog = [x for x in prog if not x.startswith('N999')]

# Remove lines that contain 'G68' or 'G69'
prog = [x for x in prog if 'G68' not in x]
prog = [x for x in prog if 'G69' not in x]

# Remove lines that contain 'G50' or 'G51'
prog = [x for x in prog if 'G50' not in x]
prog = [x for x in prog if 'G51' not in x]

# Remove lines that contain 'Z#28'
prog = [x for x in prog if 'Z#28' not in x]

# Remove lines tthat contain 'G#31'
prog = [x for x in prog if 'G#31' not in x]

# Remove empty lines
prog = list(filter(None, prog))

# Change '#26' to '.1'
prog = [x.replace('#26', '.1') for x in prog]

# Change '#8' to '.5'
prog = [x.replace('#8', '.5') for x in prog]

# Change '#9' to '1.'
prog = [x.replace('#9', '1.') for x in prog]

# Print program
for line in prog:
    print(line)

# Save program to a file
with open('/Users/dennybob/Documents/GitHub/utility/dev/engrave macro/simCode.nc', 'w') as file:
    for line in prog:
        file.write(line + '\n')
