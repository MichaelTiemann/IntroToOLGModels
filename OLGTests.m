classdef OLGTests < matlab.unittest.TestCase
    methods (Test)
        function Test_ValueFnIter_Case1_FHorz(testCase)
            OLGModel1;
            [V, Policy]=ValueFnIter_Case1_FHorz(n_d,n_a,n_z,N_j, d_grid, 1, [], [], ReturnFn, Params, DiscountFactorParamNames, []);
        end
        function Test_StationaryDist_FHorz_Case1(testCase)
            OLGModel1;
            StationaryDist=StationaryDist_FHorz_Case1(jequaloneDist,AgeWeightsParamNames,Policy,n_d,n_a,n_z,N_j,pi_z,Params);
        end
    end
end
