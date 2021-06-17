#! /usr/bin/env php
<?php
$BITS = 64;

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
  global $BITS;
  $count = 0;
  for ($i = 0; $i < $BITS; $i++) {
    if ($n & 1) {
      $count++;
    }
    $n = $n >> 1;
  }
  return $count;
}

main($argv);
