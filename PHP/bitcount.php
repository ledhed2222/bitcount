#! /usr/bin/env php
<?php
function main($argv) {
  if (count($argv) < 2) {
    echo "You must enter a number!\n";
    exit(1);
  }

  $arg = $argv[1];
  if (!is_numeric($arg)) {
    echo sprintf("%s is not a number!\n", $arg);
    exit(1);
  }

  echo sprintf("%d\n", bitcount($arg));
}

function bitcount($n) {
  $count = 0;
  for ($i = 0; $i < 32; $i++) {
    if ($n & 1) {
      $count++;
    }
    $n = $n >> 1;
  }
  return $count;
}

main($argv);

