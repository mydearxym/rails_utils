//= require base

//= require fancybox/source/jquery.fancybox.pack
//= require baidu
//= require highcharts
//= require highcharts-more


$(function () {

	$('#demo_chart').highcharts({
		chart: {
	        polar: true,
	        type: 'line'
	    },
	    
	    title:'',
	    // title: {
	    //     text: 'Budget vs spending',
	    //     x: -80
	    // },
	    
	    pane: {
	    	size: '80%'
	    },
	    
	    xAxis: {
	        categories: ['业务盈利指标', '企业综合实力', '反担保措施', '历史信息', 
	                '资产负债水平', '收入偿贷能力'],
	        tickmarkPlacement: 'on',
	        lineWidth: 0
	    },
	        
	    yAxis: {
	        gridLineInterpolation: 'polygon',
	        lineWidth: 0,
	        min: 0
	    },
	    
	    tooltip: {
	    	shared: true,
	        pointFormat: '<span style="color:{series.color}">{series.name}: <b>${point.y:,.0f}</b><br/>'
	    },
	    
	    legend: '',
	    // legend: {
	    //     align: 'right',
	    //     verticalAlign: 'top',
	    //     y: 70,
	    //     layout: 'vertical'
	    // },
	    
	    series: [{
	        name: 'Allocated Budget',
            type: 'area',
	        data: [63000, 69000, 70000, 65000, 67000, 70000],
	        pointPlacement: 'on'
	    }]
	
	});
});
				

