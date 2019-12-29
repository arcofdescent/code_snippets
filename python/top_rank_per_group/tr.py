#!/usr/bin/python3

"""
Find the top N salaries in each department, where N is provided as a parameter.

Employee Name,Employee ID,Salary,Department
"""
employee_details = [
        {'name': 'Tyler Bennett', 'id': 'E10297', 'salary': 32000, 'department': 'D101'},
        {'name': 'John Rappl', 'id': 'E21437', 'salary': 47000, 'department': 'D050'},
        {'name': 'George Woltman', 'id': 'E00127', 'salary': 53500, 'department': 'D101'},
        {'name': 'Adam Smith', 'id': 'E63535', 'salary': 18000, 'department': 'D202'},
        {'name': 'Claire Buckman', 'id': 'E39876', 'salary': 27800, 'department': 'D202'},
        {'name': 'David McClellan', 'id': 'E04242', 'salary': 41500, 'department': 'D101'},
        {'name': 'Rich Holcomb', 'id': 'E01234', 'salary': 49500, 'department': 'D202'},
        {'name': 'Nathan Adams', 'id': 'E41298', 'salary': 21900, 'department': 'D050'},
        {'name': 'Richard Potter', 'id': 'E43128', 'salary': 15900, 'department': 'D101'},
        {'name': 'David Motsinger', 'id': 'E27002', 'salary': 19250, 'department': 'D202'},
        {'name': 'Tim Sampair', 'id': 'E03033', 'salary': 27000, 'department': 'D101'},
        {'name': 'Kim Arlich', 'id': 'E10001', 'salary': 57000, 'department': 'D190'},
        {'name': 'Timothy Grove', 'id': 'E16398', 'salary': 29900, 'department': 'D190'},
]

import sys

def main(sys):
    print(employee_details)

if __name__ == '__main__':
    main(sys.argv[1:])

