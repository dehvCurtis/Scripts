#
# Python 3.7
# dehvon curtis

# SUGGESTED Setup:
# Copy script to location
#   /usr/local/bin/scripts/
# Set Environment Variable
#   alias ldaplookup="python3 /usr/local/bin/scripts/ldap-lookup.py"
#
# SUGGESTED Use:
#   example: ldaplookup -comp jbrown lblack         # compares ldap user groups for similarities
#   example: ldaplookup -usr jbrown                 # lists ldap details
#   example: ldaplookup -usrgrp jbrown marketing    # checks if user exists in ldap group
#   example: ldaplookup -usrs jbrown lblack         # lists ldap details


import subprocess
import argparse
import sys

def main():

    parser = argparse.ArgumentParser()

    parser.add_argument('-comp', nargs=2, help='Specify two ldap users to compare group membership')
    parser.add_argument('-grp', help='Specify group to list details')
    parser.add_argument('-usr', help='Specify ldap user to list details')
    parser.add_argument('-usrs', nargs=2, help='Specify two users to list out LDAP details')
    parser.add_argument('-usrgrp', nargs=2, help='Specify LDAP user & group to check if user exists in group. Ex: -usrgrp jbrown marketing')

    if not len(sys.argv) > 1:
        parser.print_help()
        sys.exit(1)

    # parseargs global usage
    global args
    args = parser.parse_args()

    # parsearg vars
    global comp_var
    global grp_var
    global usr_var
    comp_var = args.comp
    grp_var = args.grp
    usr_var = args.usr

    # check user input of parseargs
    if args.usr:
        usr_lookup()
    elif args.usrs:
        usrs_lookup()
    elif args.comp:
        comp_lookup()
    elif args.usrgrp:
        usr_grp_lookup()
    elif args.grp:
        grp_lookup()
    else:
        exit(1)

# -comp ldap user comparison
def comp_lookup():

    global comp_arg1
    global comp_arg2
    comp_arg1 = args.comp[0]
    comp_arg2 = args.comp[1]

    usr_out, sub_err = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={comp_arg1}", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()
    usr_out1, sub_err1 = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={comp_arg2}", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()

    if sub_err:
        print('error occurred. exiting')
        exit(1)
    if sub_err1:
        print('error occurred. exiting')
        exit(1)

    usr_list = usr_out.decode('UTF-8').split('\n')
    usr_list1 = usr_out1.decode('UTF-8').split('\n')

    # user 0
    tmp = []
    for output in usr_list:
        if output.split(' ')[1:2]:
            tmp.append(output.split(' ')[1:2])

    usr_final_list = []
    for line in tmp:
        if line[0].split(',')[0][0:2] == 'cn':
            usr_final_list.append(line[0].split(',')[0][3:])
    if len(usr_final_list) == 0:
        print(f'Exiting!\nUser \'{comp_arg1}\' not found')
        exit(1)

    # user 1
    tmp1 = []
    for output1 in usr_list1:
        if output1.split(' ')[1:2]:
            tmp1.append(output1.split(' ')[1:2])

    usr_final_list1 = []
    for line in tmp1:
        if line[0].split(',')[0][0:2] == 'cn':
            usr_final_list1.append(line[0].split(',')[0][3:])
    if not len(usr_final_list1):
        print(f'Exiting!\nUser \'{comp_arg2}\' not found')
        exit(1)

    i = 0
    if usr_final_list[-2] == 'ONEADOBE_USERS': #removal of 'ONEADOBE_USERS' LDAP group, so it's not compared
        usr_final_list.remove('ONEADOBE_USERS')
    print(f'Users \'{comp_arg2}\' and \'{comp_arg1}\' have the following groups/managers in common:')
    for line in usr_final_list:
        for line1 in usr_final_list1:
            if line == line1:
                print(line)
                i += 1

    if i == 0:
        print(f'\'{comp_arg1}\' and \'{comp_arg2}\' have no groups in common')
        exit(1)

# -grp ldap group lookup
def grp_lookup():

    out, sub_err = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Groups,o=adbe cn={grp_var}", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()

    out = out.decode('UTF-8').split('\n')

    if sub_err:
        print('error occurred. exiting')
        exit(1)

    for line in out:
        print(line)

# -usr ldap user lookup
def usr_lookup():

    out, sub_err = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={usr_var}", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()

    out = out.decode('UTF-8').split('\n')

    if sub_err:
        print('error occurred. exiting')
        exit(1)

    for line in out:
        print(line)

# -usrs prints details for both ldap users
def usrs_lookup():

    global usrs_arg1
    global usrs_arg2
    usrs_arg1 = args.usrs[0]
    usrs_arg2 = args.usrs[1]

    # subprocess.call(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={usrs_arg1}", shell=True)
    out, sub_err = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={usrs_arg1}",stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()
    # subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={usrs_arg2}", shell=True)
    out1, sub_err1 = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={usrs_arg2}",stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()

    out = out.decode('UTF-8').split('\n')
    out1 = out1.decode('UTF-8').split('\n')

    if sub_err:
        print('error occurred. exiting')
        exit(1)
    if sub_err1:
        print('error occurred. exiting')
        exit(1)
    print('-' * 25)
    print(f'LDAP Details for {usrs_arg1}')
    print('-' * 25)
    for line in out:
        print(line)
    print('-' * 25)
    print(f'LDAP Details for {usrs_arg2}')
    print('-' * 25)
    for line in out1:
        print(line)

# -usrgrp checks if user is a member of a group
def usr_grp_lookup():
    global grp_arg1
    global grp_arg2
    grp_arg1 = args.usrgrp[1] #group
    grp_arg2 = args.usrgrp[0] #user

    usr_out, sub_err = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Users,o=adbe cn={grp_arg2}", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()
    grp_out, sub_err1 = subprocess.Popen(f"ldapsearch -H ldap://ldap.dmz.ut1.adobe.net:389 -x -ZZ -b ou=Groups,o=adbe cn={grp_arg1}", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True).communicate()

    grp_list = grp_out.decode('UTF-8').split('\n')

    if sub_err:
        print('error occurred. exiting')
        exit(1)
    if sub_err1:
        print('error occurred. exiting')
        exit(1)

    tmp_list = []
    for output in grp_list:
        if output.split(' ')[1:2]:
            tmp_list.append(output.split(' ')[1:2])

    grp_final_list = []
    for line in tmp_list:
        if line[0].split(',')[0][0:2] == 'cn':
            grp_final_list.append(line[0].split(',')[0][3:])

    if grp_arg2 in grp_final_list:
        print(f'User \'{grp_arg2}\' FOUND in group \'{grp_arg1}\'')
    else:
        print(f'User \'{grp_arg2}\' NOT FOUND in group \'{grp_arg1}\'')

if __name__ == '__main__':
    main()