# Analyzes student scores and finds the average, highest scorer, and pass/fail

def get_scores():
    scores = {}
    for i in range(3):
        name = input("Enter student name: ")
        try:
            score = int(input(f"Enter score for {name}: "))
            scores[name] = score
        except ValueError:
            print("Invalid input! Score must be an integer.")
            scores[name] = 0
    return scores

def analyze(scores):
    total = sum(scores.values())
    average = total / len(scores)
    top_student = max(scores, key=scores.get)
    print("\nSummary:")
    print("Average Score:", average)
    print("Top Scorer:", top_student, "-", scores[top_student])

    print("\nPass/Fail:")
    for student, score in scores.items():
        if score >= 40:
            print(student, "-> PASS")
        else:
            print(student, "-> FAIL")

scores = get_scores()
analyze(scores)