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

<html>
  <head>
  </head>
  <body>
    <div>
      <form>
        <label>Input</label>
        <input type="number" name="input" />
        <input type="submit" />
      </form>
    </div>
    <br />
    <div>
      Answer is <?php echo bitcount(intval($_GET['input'])); ?>
    </div> 
  </body>
</html>

