<?php
function bitcount($n) {
  $count = 0;
  for ($i = 0; $i < 32; $i++) {
    if ($n & 1)
      $count++;
    $n = $n >> 1;
  }
  return count;
}
?>
