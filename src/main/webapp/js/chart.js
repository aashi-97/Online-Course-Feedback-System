$.ajax({
    url : 'piechart',
    success : function (result) {
        var series = [];
        var data = [];
        for(var i=0 ; i<result.length;i++){
            var object ={};
            object.name = result[i].coursename.toUpperCase();
            object.y = result[i].overallaverage;
            data.push(object);
        }
        var seriesObject = {
            name : 'Result',
            colorByPoint: true,
            data : data
        }
        series.push(seriesObject);
        piechart(series);
    }
})

function piechart(series) {
    Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Average Result of Every Course'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.y}</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.y}'
                }
            }
        },
        series:series
    });
}