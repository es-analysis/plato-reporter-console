
Total Logical lines of code
---------------------
Highest : {{ max.total.lloc.file }} ({{max.total.lloc.value}})
Lowest : {{ min.total.lloc.file }} ({{min.total.lloc.value}})

Average Maintainability
---------------
Highest : {{ max.average.maintainability.file }} ({{toFixed max.average.maintainability.value 2}}/100)
Lowest : {{ min.average.maintainability.file }} ({{toFixed min.average.maintainability.value 2}}/100)

Number of Functions
-------------------
Highest : {{ max.numFunctions.file }} ({{max.numFunctions.value}})
Lowest : {{ min.numFunctions.file }} ({{min.numFunctions.value}})

Total Cyclomatic Complexity
---------------------
Highest : {{ max.total.cyclomatic.file }} ({{max.total.cyclomatic.value}})
Lowest : {{ min.total.cyclomatic.file }} ({{min.total.cyclomatic.value}})

Total Difficulty 
----------
Highest : {{ max.total.difficulty.file }} ({{toFixed max.total.difficulty.value 2}})
Lowest : {{ min.total.difficulty.file }} ({{toFixed min.total.difficulty.value 2}})

Averages
-------- 
{{#with average}}
LLOC .................. {{ toFixed total.lloc 2 }}
Mainainability ........ {{ toFixed average.maintainability 2 }}/100
Number of Functions ... {{ toFixed numFunctions 2 }}
Cyclomatic Complexity . {{ toFixed total.cyclomatic 2 }}
Difficulty ............ {{ toFixed total.difficulty 2 }}
{{/with}}

{{!--
{ average:
   { lloc: 23.714285714285715,
     cyclomatic: 7.571428571428571,
     vocabulary: 36.07142857142857,
     length: 126.28571428571429,
     maintainability: 53.21769175659314,
     time: 813665.9960059895,
     bugs: 0.18255277894320782,
     volume: 691.1993538505586,
     difficulty: 19.097979447627786,
     effort: 14645.987928107814,
     functions: 4.357142857142857 },
  max:
   { lloc: { file: 'src/commands/batch/store.js', value: 51 },
     cyclomatic: { file: 'src/commands/batch/analyze.js', value: 15 },
     vocabulary: { file: 'src/commands/batch/store.js', value: 61 },
     length: { file: 'src/commands/batch/analyze.js', value: 275 },
     maintainability: { file: 'src/index.js', value: 77.71423312766196 },
     time:
      { file: 'src/commands/batch/store.js',
        value: 2052711.9964276762 },
     bugs:
      { file: 'src/commands/batch/store.js',
        value: 0.36978199595836836 },
     volume:
      { file: 'src/commands/batch/analyze.js',
        value: 1624.3949137923425 },
     difficulty: { file: 'src/commands/db/insert.js', value: 30.666666666666668 },
     effort:
      { file: 'src/commands/batch/store.js',
        value: 36948.81593569817 },
     functions: { file: 'src/commands/batch/analyze.js', value: 13 } },
  min:
   { lloc: { file: 'src/index.js', value: 3 },
     cyclomatic: { file: 'src/logger.js', value: 1 },
     vocabulary: { file: 'src/logger.js', value: 8 },
     length: { file: 'src/logger.js', value: 15 },
     maintainability:
      { file: 'src/commands/batch/analyze.js',
        value: 38.439880617393385 },
     time: { file: 'src/index.js', value: 14859.02344426084 },
     bugs: { file: 'src/index.js', value: 0.013837381901101075 },
     volume: { file: 'src/logger.js', value: 45 },
     difficulty: { file: 'src/index.js', value: 5.625 },
     effort: { file: 'src/index.js', value: 267.4624219966951 },
     functions: { file: 'src/logger.js', value: 0 } } }
--}}