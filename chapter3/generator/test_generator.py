
import unittest

from generate import generate_assignment


class TestAssignmentGenerator(unittest.TestCase):

    def test_same_id_same_assignment(self):
        first = generate_assignment("SV001")
        second = generate_assignment("SV001")
        self.assertEqual(first, second)

    def test_different_ids_usually_different(self):
        first = generate_assignment("SV001")
        second = generate_assignment("SV002")
        self.assertNotEqual(
            first["operands"],
            second["operands"]
        )

    def test_operands_are_valid(self):
        assignment = generate_assignment("SV001")
        a = assignment["operands"]["A"]
        b = assignment["operands"]["B"]

        self.assertGreaterEqual(a, 10)
        self.assertGreaterEqual(b, 2)
        self.assertLessEqual(b, 19)
        self.assertNotEqual(a % b, 0)

    def test_empty_id_is_rejected(self):
        with self.assertRaises(ValueError):
            generate_assignment("   ")


if __name__ == "__main__":
    unittest.main()

