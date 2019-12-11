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
	
	<!-- 여기는 중심페이지 -->
	<div class="content-wrapper">
	<!-- 메인페이지 헤더부분 -->
	<section class="content-header">	 
		<center> <br> <h1>시간 차트 <br> </h1> </center>
	</section>
	
	<!-- 메인 컨텐츠 -->
	<section class="content">
	
	<script src="../../code/highcharts.js"></script>
	<script src="../../code/modules/series-label.js"></script>
	<script src="../../code/modules/exporting.js"></script>
	
	<div id="chart2"> </div>		
		
	<script type="text/javascript">
	
		Highcharts.chart('chart2', {
	
	    title: {
	        text: '* NFC_ID : 52_d7_b3_1b *'
	    },	

	    credits:{ enabled:false },
	    yAxis: {
	        title: {
	            text: '시간'
	        }
	    },
	    xAxis: {
	    	  categories: ['12월 8일','12월 8일','12월 9일','12월 9일','12월 10일','12월 10일','12월 11일','12월 11일','12월 12일','12월 12일'],
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
	        name: '52_d7_b3_1b',
	        data: [9.3, 16.7, 9.5, 16.2, 9.7, 16.4, 9.4, 16.8, 9.2, 16.7]
	    
	    },  ],
	
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
	</div>
	
	<br>
	<center>		
		<input type="reset" onclick="location.href='/'" value="메인 화면">		
	</center>



<%@include file="../footer.jsp"%>