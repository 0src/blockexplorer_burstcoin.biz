$(function() { 
  $('#chart').highcharts('StockChart', {
      title: {
	  text: 'Blockchain Size'
      },
      subtitle: {
	  text: 'Source: burstcoin.biz'
      },
      xAxis: {
	  type: 'datetime',
	  dateTimeLabelFormats: {
	      month: '%e. %b %y',
	      year: '%b'
	  }
      },
      yAxis: {
	  title: {
	      text: 'MB'
	  },
	  min: 0
      },
      credits: {
	enabled: false
      },
      tooltip: { {literal}
	  pointFormat: '{point.y} MB'{/literal}
      },

      series: [{
	  showInLegend: false,
	  name: 'Blockchain Size',
	  data: [
	      {foreach $blockdata AS $block}
	      [Date.UTC({$block.blockyear}, {$block.blockmonth}, {$block.blockday}), {$block.size} ],
	      {/foreach}
	  ]
      }]
  });
});