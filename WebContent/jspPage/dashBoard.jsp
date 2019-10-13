<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <title>ZingSoft Demo</title>
	
		<script src="https://cdn.zingchart.com/zingchart.min.js"></script>
<style>html, body {
	height:100%;
	width:100%;
	margin:0;
	padding:0;
}
#myChart {
	height:50%;
	width:50%;
	min-height:100px;
}
.zc-ref {
	display:none;
}
zing-grid[loading]{height:450px;}</style></head>
	<body>
		<div id="myChart"><a class="zc-ref" href="https://www.zingchart.com">Powered by ZingChart</a></div>
	<script>ZC.LICENSE=["569d52cefae586f634c54f86dc99e6a9", "b55b025e438fa8a98e32482b5f768ff5"];zingchart.loadModules('scalableyaxis', function(e) {
  // chart configuration
  let chartConfig = {
    type: 'bar',
    title: {
      text: 'Click on the Scale to start the drag',
      adjustLayout: true,
      flat: true
    },
    subtitle: {
     text: 'Click Button To Reset The Scales'
    },
    scalableYaxis: { // need this object
      scalable: true,
      chartid: 'myChart', // could get chartId in a more dynamic way if needed
    },
    scaleY: {
      maxItems: 10,
      lineColor: '#e53935' // make scale line color match (not necessary)
    },
    scaleY2: {
      maxItems: 6,
      lineColor: '#9c27b0', // make scale line color match (not necessary)
      guide: {
        visible: false // you can change this to true to show the guide
      },
      placement: 'default'
    },
    scaleY3: {
      lineColor: '#4caf50' // make scale line color match (not necessary)
        // dont even have to set maxItems!
    },
    scaleY4: {
      placement: 'default',
      lineColor: '#00bcd4' // make scale line color match (not necessary)
    },
    scaleY5: {
      lineColor: '#ffeb3b',
    },
    scaleY6: {
      lineColor: '#3f51b5'
    },
    plotarea: {
      margin: 'dynamic'
    },
    series: [{
      values: [35, 42, 67, 89, 25, 34, 67, 85],
      lineColor: '#e53935',
      marker: {
        backgroundColor: '#e53935'
      },
      scales: 'scale-x, scale-y'
    }, {
      values: [135, 242, 167, 289, 325, 434, 567, 785],
      lineColor: '#9c27b0',
      marker: {
        backgroundColor: '#9c27b0'
      },
      scales: 'scale-x, scale-y-2'
    },
    {
      values: [25135, 25542, 33167, 22289, 32335, 43224, 51167, 73385],
      lineColor: '#4caf50',
      marker: {
        backgroundColor: '#4caf50'
      },
      scales: 'scale-x, scale-y-3'
    },
    {
      values: [5135, 2542, 3167, 2289, 3335, 4224, 5167, 7385],
      lineColor: '#00bcd4',
      marker: {
        backgroundColor: '#00bcd4'
      },
      scales: 'scale-x, scale-y-4'
    },
    {
      values: [135, 542, 167, 289, 335, 224,1167, 385],
      lineColor: '#ffeb3b',
      marker: {
        backgroundColor: '#ffeb3b'
      },
      scales: 'scale-x, scale-y-5'
    },
    {
      values: [44135, 22542, 11167, 21289, 22335, 41224, 41167, 63385],
      lineColor: '#3f51b5',
      marker: {
        backgroundColor: '#3f51b5'
      },
      scales: 'scale-x, scale-y-6'
    }
    ],
    labels: [
      {
        x:15,
        y:5,
        text: 'Reset',
        border: '1px solid black',
        padding:7,
        borderRadius:4,
        cursor: 'pointer',
        id: 'reset-scales',
        hoverState: {
          border:'2px solid black'
        }
      }  
    ]
  };
  
  zingchart.bind(null, 'label_click', function(e) {
    if (e.labelid === 'reset-scales') {
      /*
       * custom events for the plugin.
       * 1) getscaleminmax - allows you to get the current minMax value
       * for each scale AND the original. This allows you to save the
       * state of the scales.
       *    - maxValue/minValue are the original scale values
       *    - _maxValue/_minValue are the new scale values
       *
       * 2) resetscales - will reset the scales to the original value
       */
      console.log(zingchart.exec(e.loader.id, 'getscaleminmax'))
      zingchart.exec(e.loader.id, 'resetscales');
    }
  });
  zingchart.render({
    id: 'myChart',
    data: chartConfig,
    height: '100%',
    width: '100%',
    modules: 'scalableYaxis'
  });
});</script></body>
</html>