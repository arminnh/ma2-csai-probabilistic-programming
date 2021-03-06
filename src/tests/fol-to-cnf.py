import unittest
import sys
import os.path
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
from FOLTheory import *


class TestFOLToCNF(unittest.TestCase):

    def test_1(self):
        # P || Q || (R && !S)
        formula = Disjunction([Atom('P'), Atom('Q'), Conjunction([Atom('R'), Negation(Atom('S'))])])
        # (P || Q || R) && (P || Q || !S)
        expected = Conjunction([Disjunction([Atom('P'), Atom('Q'), Atom('R')]), Disjunction([Atom('P'), Atom('Q'), Negation(Atom('S'))])])
        self.assertEqual(formula.to_cnf(), expected)

    def test_2(self):
        # P || (Q && R) || (S && T && U) || V
        formula = Disjunction([Atom('P'), Conjunction([Atom('Q'), Atom('R')]), Conjunction([Atom('S'), Atom('T'), Atom('U')]), Atom('V')])
        # (P || Q || S || V) && (P || Q || T || V) && (P || Q || U || V) &&
        # (P || R || S || V) && (P || R || T || V) && (P || R || U || V)
        expected = Conjunction([
            Disjunction([Atom('P'), Atom('Q'), Atom('S'), Atom('V')]), Disjunction([Atom('P'), Atom('Q'), Atom('T'), Atom('V')]), Disjunction([Atom('P'), Atom('Q'), Atom('U'), Atom('V')]),
            Disjunction([Atom('P'), Atom('R'), Atom('S'), Atom('V')]), Disjunction([Atom('P'), Atom('R'), Atom('T'), Atom('V')]), Disjunction([Atom('P'), Atom('R'), Atom('U'), Atom('V')])
        ])
        self.assertEqual(formula.to_cnf(), expected)

    def test_3(self):
        # P || Q || (R && S) || (T && U)
        formula = Disjunction([Atom('P'), Atom('Q'), Conjunction([Atom('R'), Atom('S')]), Conjunction([Atom('T'), Atom('U')])])
        # (T || Q || R || P) && (T || Q || S || P)_ && (U || Q || R || P) && (U || Q || S || P)
        expected = Conjunction([
            Disjunction([Atom('T'), Atom('Q'), Atom('R'), Atom('P')]), Disjunction([Atom('T'), Atom('Q'), Atom('S'), Atom('P')]),
            Disjunction([Atom('U'), Atom('Q'), Atom('R'), Atom('P')]), Disjunction([Atom('U'), Atom('Q'), Atom('S'), Atom('P')])
        ])
        self.assertEqual(formula.to_cnf(), expected)
