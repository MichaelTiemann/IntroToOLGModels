import matlab.unittest.plugins.CodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoverageResult

runner = testrunner("textoutput");
format1 = CoverageResult;
plugin1 = CodeCoveragePlugin.forFile("C:\GitHub\VFIToolkit-matlab\StationaryDist\FHorz\StationaryDist_FHorz_Case1.m",Producing=format1);
addPlugin(runner,plugin1)
format2 = CoverageResult;
plugin2 = CodeCoveragePlugin.forFile("C:\GitHub\VFIToolkit-matlab\ValueFnIter\FHorz\ValueFnIter_Case1_FHorz.m",Producing=format2);
addPlugin(runner,plugin2)

suite1 = testsuite("OLGTests");
run(runner,suite1);

result1 = format1.Result;

generateHTMLReport(result1)

result2 = format2.Result;

generateHTMLReport(result2)
