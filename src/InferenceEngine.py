import problog
from CNF2 import CNF
from FOLTheory import FOLTheory
from GroundProblogParser import GroundProblogParser
from wmc.WeightedModelCounter import WeightedModelCounter


class InferenceEngine:
    def __init__(self):
        self.problog_parser = GroundProblogParser()
        self.weighted_model_counter = WeightedModelCounter.factory("MiniC2D")

    def evaluate_problog_program(self, program):
        """ Evaluates a problog program.
        :type program: string
        """
        # ground and parse the program
        ground_program = self.ground_problog_program(program)
        problog_program = self.problog_parser.program_to_problog(ground_program)
        print("PROGRAM")
        print(problog)
        print("====================================================")

        # convert the GroundProblog to a FOLTheory
        fol_theory = FOLTheory.create_from_problog(problog_program)
        print("FOL theory:")
        print(fol_theory)
        print("====================================================")

        # convert the LogicFormula to its CNF representation
        cnf = CNF.create_from_fol_theory(fol_theory)
        print("CNF:")
        print(cnf)
        print("====================================================")
        print("DIMACS")
        print(cnf.to_dimacs() + "====================================================")
        result = self.weighted_model_counter.evaluate_cnf(cnf)
        print("RESULT:")
        print(result)

        return result


    def evaluate_bayesian_network(self, network):
        """ Evaluates a Bayesian network by converting it to a Problog program and evaluating that program. """
        # return self.evaluate_problog_program(program)
        raise NotImplementedError

    def ground_problog_program(self, program):
        """ Grounds a Problog program using the Problog library. """
        lf = problog.formula.LogicFormula.create_from(program, avoid_name_clash=True, keep_order=True, label_all=True)
        return lf.to_prolog()
