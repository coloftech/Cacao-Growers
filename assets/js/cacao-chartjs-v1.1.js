
  var inarray = function(array,index){
     var found = array.indexOf(index)
                if(found == -1){
                  return false;
                }
                  return true;
  }

var download = function(canvas){
  var link = document.createElement('a');
  var date = Date.now();
  link.download = canvas+'-'+dateFormat(date)+'.png';
  link.href = document.getElementById(canvas).toDataURL()
  link.click();
  notify('success','Chart was successfully downloaded.')
}
  var dateFormat = function(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
}

$(document).on('click','.btn-download',function(){
  var parent =  $(this).parent().parent().parent();
  var canvas = parent.find('canvas');
  download(canvas.attr('id'));
})
const groupBy = key => array =>
  array.reduce((objectsByKeyValue, obj) => {
    const value = obj[key];
    objectsByKeyValue[value] = (objectsByKeyValue[value] || []).concat(obj);
    return objectsByKeyValue;
  }, {});

  var toBarChart = function (labels,datasets,elem,title) {
    // body...
    //console.log('datasets.data');
      var ctx = document.getElementById(elem).getContext('2d');
      window.myBar = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: labels,
          datasets:[{
            data: datasets,
            label: title
          }]
        },
        options: {
          responsive: true,
          legend: {
            position: 'top',
          },
          title: {
            display: true,
            text: 'Chart.js Bar Chart'
          },
          plugins:{
            labels: {
              render: 'value'
            }
          }
        }
      });

    
  }

	var toGroupBarChart = function (labels,datasets,elem,title) {
		// body...
    //console.log('datasets.data');
      var ctx = document.getElementById(elem).getContext('2d');
      window.myBar = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: labels,
          datasets:datasets
        },
        options: {
          responsive: true,
          legend: {
            position: 'top',
          },
          title: {
            display: true,
            text: 'Chart.js Bar Chart'
          },
          plugins:{
            labels: {
              render: 'value'
            }
          }
        }
      });

    
	}


var tostackedBar = function(element,label,datasets,colors){

 var datas = JSON.stringify(datasets)
var dataset = JSON.parse(datas)

  var ctx = document.getElementById(element);
  var chart = new Chart(ctx, {
   type: 'bar',
   data: {
      labels: label, // responsible for how many bars are gonna show on the chart
      // create 12 datasets, since we have 12 items
      // data[0] = labels[0] (data for first bar - 'Standing costs') | data[1] = labels[1] (data for second bar - 'Running costs')
      // put 0, if there is no data for the particular bar
      datasets: dataset
   },
   options: {
      legend: {
         position: 'right' // place legend on the right side of chart
      },
      scales: {
         xAxes: [{
            stacked: true // this should be set to make the bars stacked
         }],
         yAxes: [{
            stacked: true // this also..
         }]
      },
      plugins:{
        labels: false
      },
          hover: {
            animationDuration: 2
          },

          tooltips: {
            enabled: true
          }
   }
});
}

var tostackedBarNone = function(element,label,datasets,colors){

 var datas = JSON.stringify(datasets)
var dataset = JSON.parse(datas)

  var ctx = document.getElementById(element);
  var chart = new Chart(ctx, {
   type: 'bar',
   data: {
      labels: label, // responsible for how many bars are gonna show on the chart
      // create 12 datasets, since we have 12 items
      // data[0] = labels[0] (data for first bar - 'Standing costs') | data[1] = labels[1] (data for second bar - 'Running costs')
      // put 0, if there is no data for the particular bar
      datasets: dataset
   },
   options: {
      legend: false,
      scales: {
         xAxes: [{
            stacked: true // this should be set to make the bars stacked
         }],
         yAxes: [{
            stacked: true // this also..
         }]
      },
      plugins:{
        labels: false
      },
          hover: {
            animationDuration: 2
          },

          tooltips: {
            enabled: true
          }
   }
});
}

var tostackedBarLeft = function(element,label,datasets,colors){

 var datas = JSON.stringify(datasets)
var dataset = JSON.parse(datas)

  var ctx = document.getElementById(element);
  var chart = new Chart(ctx, {
   type: 'bar',
   data: {
      labels: label, // responsible for how many bars are gonna show on the chart
      // create 12 datasets, since we have 12 items
      // data[0] = labels[0] (data for first bar - 'Standing costs') | data[1] = labels[1] (data for second bar - 'Running costs')
      // put 0, if there is no data for the particular bar
      datasets: dataset
   },
   options: {
      legend: {
         position: 'left' // place legend on the right side of chart
      },
      scales: {
         xAxes: [{
            stacked: true // this should be set to make the bars stacked
         }],
         yAxes: [{
            stacked: true // this also..
         }]
      },
      plugins:{
        labels: false
      },
          hover: {
            animationDuration: 2
          },

          tooltips: {
            enabled: true
          }
   }
});
}