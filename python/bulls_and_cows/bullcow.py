
def get_score_bull(num, chosen):
    num_list = list(str(num))
    chosen_list = list(str(chosen))
    num_bulls = 0

    for idx, d in enumerate(num_list):
        if num_list[idx] == chosen_list[idx]:
            num_bulls += 1

    return 'B' * num_bulls

def get_score_cow(num, chosen):
    num_list = list(str(num))
    chosen_list = list(str(chosen))
    num_cows = 0

    for idx, d in enumerate(num_list):
        if num_list[idx] != chosen_list[idx] and num_list[idx] in chosen_list:
            num_cows += 1

    return 'C' * num_cows

