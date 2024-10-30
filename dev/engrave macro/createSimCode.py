# createSimFile.py
# This script converts engrave.nc into code readable by the simulator

# Save program as a list, line-by-line so mulitiple pointers don't occur
prog = []
with open('/Users/dennybob/Documents/GitHub/utility/dev/engrave macro/engrave.nc', 'r') as file:
    for line in file:
        prog.append(line.strip())



# Remove full lines that start with these characters
for line in prog:
    if line.startswith('%'):
        prog.pop(prog.index(line))
for line in prog:
    if line.startswith('O'):
        prog.pop(prog.index(line))
for line in prog:
    if line.startswith('GOTO'):
        prog.pop(prog.index(line))
for line in prog:                       # FOR SOME REASON IT ONLY POPS THE FIRST INSTANCE, ALL THE OTHERS POPPED ALL
    if line.startswith('IF'):
        prog.pop(prog.index(line))
# for line in prog:
#     if line.startswith('GOTO'):
#         prog.pop(prog.index(line))
# for line in prog:
#     if line.startswith('#'):
#         prog.pop(prog.index(line))
print(prog)



#     if line.startswith('%'):
#         line = ''

#     if line.startswith('O'):
#         line = ''

#     if line.startswith('('):
#         line = ''

#     if line.startswith('IF'):
#         line = ''

#     if line.startswith('#'):
#         line = ''

#     if line.startswith('G#'):
#         line = ''

#     if line.startswith('G68'):
#         line = ''

#     if line.startswith('G69'):
#         line = ''

#     if line.startswith('G50'):
#         line = ''

#     if line.startswith('G51'):
#         line = ''

#     if line.startswith('G17'):
#         line = ''

#     if line.startswith('GOTO'):
#         line = ''

#     if line.startswith('N90'):
#         line = ''

#     if line.startswith('N91'):
#         line = ''

#     if line.startswith('N99'):
#         line = ''

#     if line.startswith('G0 Z#28 (RETURN'):
#         line = ''

#     if line.find('#26'):
#         line = line.replace('#26', '.1')
#         line = line.replace('F#8', '')

#     if line.find('F#9'):
#         line = line.replace('F#9', '')

#     line = line.strip()

