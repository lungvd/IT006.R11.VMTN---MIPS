
import hashlib
import json
import sys

VERSION = "chapter3-v1"


def generate_assignment(student_id):
    student_id = student_id.strip()

    if not student_id:
        raise ValueError("Student ID must not be empty.")

    # A deterministic seed: same ID and version => same assignment.
    seed_text = f"{VERSION}:{student_id}"
    digest = hashlib.sha256(seed_text.encode("utf-8")).digest()

    # Generate two positive operands.
    a = 10 + int.from_bytes(digest[0:2], "big") % 90
    b = 2 + int.from_bytes(digest[2:4], "big") % 18

    # Avoid a zero remainder for the initial division exercise.
    # This makes the first lab easier to validate.
    if a % b == 0:
        a += 1

    return {
        "version": VERSION,
        "student_id": student_id,
        "operands": {
            "A": a,
            "B": b
        },
        "tasks": [
            "addition",
            "subtraction",
            "signed_multiplication",
            "signed_division"
        ]
    }


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python generate.py STUDENT_ID")
        sys.exit(1)

    assignment = generate_assignment(sys.argv[1])
    print(json.dumps(assignment, indent=2))

