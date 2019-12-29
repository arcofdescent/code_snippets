
def get_max_num_descending(arr):
    curr_idx = 0
    num_descending = [ 0 ]

    for idx, val in enumerate(arr):

        # last element
        if (idx == len(arr) - 1):
            num_descending.sort()
            return num_descending.pop()

        if (arr[idx+1] < arr[idx]):
            num_descending[curr_idx] = num_descending[curr_idx] + 1
        else:
            curr_idx = curr_idx + 1
            num_descending.append(0)

print(get_max_num_descending([3, 4, 3, 2, 1, 0, 5, 8, 7, 6, 5]))


            
