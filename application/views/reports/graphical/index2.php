<style type="text/css">
	#do_legend{
   height:62px;
}

#do_legend{
    width:100%;     
}

#do_legend> ul{
    padding: 0;
    text-align: center;
}
 

#do_legend {   
  width:100%;
  bottom:10%;
}
#do_legend li {
    cursor: pointer;
    margin: 4px 3px;
    display: inline-table;
}
#do_legend li span {
    position: relative;
    padding: 3px 10px;
    border-radius: 13px;
    color: white;
    z-index: 2;
    font-size: 11px;
}

#do_legend{
    height: 62px;
    overflow-y: auto;
}

.donut-area{
    height:calc(100% - 62px)
}
</style>
<div class="content">
	<div style="width:40%">
   <div id="do_legend"></div>
  <canvas id="canvas"></canvas>
</div>
</div>



    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/Chart.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-colorschemes.min.js"></script><script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chatjs-utils.js"></script>


    <script type="text/javascript">
    	var configd = {
    type: 'doughnut',
    data: {
        datasets: [{
            data: [
                50,
                60,
                20
            ],           
            backgroundColor: [
                '#33b35a',
                "#ffce56",
                "#4bc0c0",
                "#CDDC39",
                "#9C27B0",
                "#fb7145",
                "#5971f9"
            ],
            label: 'Energy usage'
        }],
        labels: [
            'E1',
            'E2',
            'E3'
        ]
    },
    options: {
        responsive: true,
        legend: {
            display: true
        },
        legendCallback: function (chart) {             
            // Return the HTML string here.
            console.log(chart.data.datasets);
            var text = [];
            text.push('<ul class="' + chart.id + '-legend">');
            for (var i = 0; i < chart.data.datasets[0].data.length; i++) {
                text.push('<li><span id="legend-' + i + '-item" style="background-color:' + chart.data.datasets[0].backgroundColor[i] + '"   onclick="updateDataset(event, ' + '\'' + i + '\'' + ')">');
                if (chart.data.labels[i]) {
                    text.push(chart.data.labels[i]);
                }
                text.push('</span></li>');
            }
            text.push('</ul>');
            return text.join("");
        },
        title: {
            display: false,
            text: 'Chart.js Doughnut Chart'
        },
        animation: {
            animateScale: true,
            animateRotate: true
        },
        tooltips: {
            mode: 'index',
            intersect: false,
            callbacks: {
                label: function (tooltipItem, data) {
                    let label = data.datasets[tooltipItem.datasetIndex].label + ' - ' + data.labels[tooltipItem.index];
                    let datasetLabel = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
                    return label + ': ' + datasetLabel.toLocaleString();
                }
            }
        },
    }
};

 var ctxd = document.getElementById('canvas').getContext('2d');
    
    window.myDoughnut = new Chart(ctxd, configd);
    $("#do_legend").html(window.myDoughnut.generateLegend());

// Show/hide chart by click legend
updateDataset = function (e, datasetIndex) {    
    var index = datasetIndex;
    var ci = e.view.myDoughnut;
    var meta = ci.getDatasetMeta(0);    
    var result= (meta.data[datasetIndex].hidden == true) ? false : true;
    if(result==true)
    {
        meta.data[datasetIndex].hidden = true;
        $('#' + e.path[0].id).css("text-decoration", "line-through");
    }else{
        $('#' + e.path[0].id).css("text-decoration","");
        meta.data[datasetIndex].hidden = false;
    }
     
    ci.update();   
};
    </script>