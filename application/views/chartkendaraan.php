<div class="col-md-10">
  <section class="content">
    <canvas id="myChart"></canvas>
  </section>
</div>




<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script type="text/javascript">
  var ctx = document.getElementById('myChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'pie',
    data: {
      labels: [<?php foreach ($label as $la) {
                  echo "'" . $la['jenis_kendaraan'] . "',";
                } ?>],
      datasets: [{
        label: 'Jumlah Kendaraan',
        backgroundColor: ['#fff5b7', '#00ead3', '#005f99'],
        borderColor: '#C3C3D2',
        data: [
          <?php echo $motor ?>, <?php echo $mobil ?>, <?php echo $truk ?>
        ]
      }]
    },
  });
</script>