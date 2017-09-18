#!/bin/bash
echo "Preparing Test & Training data for Rocks"
cat sonar.rocks | grep -e "*" -A 10 | grep -v "-" |  grep -v "*" | tr '\n' ' ' | sed 's/} {/}\'$'\n{/g' | sed 's/}/ R}/g' > sonar.rocks.training
cat sonar.rocks | grep '^C' -A 10 | grep -v "-" |  grep -v "^C" | tr '\n' ' ' | sed 's/} {/}\'$'\n{/g' | sed 's/}/ R}/g' > sonar.rocks.test

echo "Preparing Test & Training data for Mines"
cat sonar.mines | grep -e "*" -A 10 | grep -v "-" |  grep -v "*" | tr '\n' ' ' | sed 's/} {/}\'$'\n{/g' | sed 's/}/ M}/g' > sonar.mines.training
cat sonar.mines | grep '^C' -A 10 | grep -v "-" |  grep -v "^C" | tr '\n' ' ' | sed 's/} {/}\'$'\n{/g' | sed 's/}/ M}/g' > sonar.mines.test
