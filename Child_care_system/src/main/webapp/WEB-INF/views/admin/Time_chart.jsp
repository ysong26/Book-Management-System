<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>

		<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}
		</style>


    <!-- 메인 컨텐츠 -->
    <section class="content">

<script src="../../code/highcharts.js"></script>
<script src="../../code/modules/series-label.js"></script>
<script src="../../code/modules/exporting.js"></script>

<div id="chart2"></div>



		<script type="text/javascript">
Highcharts.chart('chart2', {
    title: {
        text: '시간 차트'  // 
    },
    subtitle: {
        text: '이지금'   // 
    },
    credits:{ enabled:false },
    yAxis: {
        title: {
            text: '시간'  
        }
    },
    xAxis: {
    	  categories: ['1일','1일','2일','2일','3일','3일','4일','4일'],
    	      crosshair: true
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },
    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
           /*  pointStart: 9 */
        }
    },
    series: [{
        name: '아이1',
        data: [10.28, 16.29, 10.20, 16.30, 10.20, , 10.25, 16.20]
    }   ],
    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }
});
		</script>
    </section>





<%@include file="../footer.jsp"%> 