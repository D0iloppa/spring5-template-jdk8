let g_home = {};

$(document).ready(function () {
    console.log("✅ home.js loaded - DOM is ready.");
	
	homeInit();
	
});

function homeInit(){

	
	// tabulator 생성
	
	const table = new Tabulator("#test-table", {
	    layout: "fitColumns",
	    height: "300px",
	    ajaxURL: "./sample", // 동일한 API 사용
	    ajaxParams: {
	        test: 'tabulator'
	    },
	    ajaxConfig: {
	        method: "GET"
	    },
	    ajaxResponse: function (url, params, response) {
	        console.log("📥 Tabulator ajaxResponse", response);
	        return response.data; // 실제 rows만 추출
	    },
	    columns: [
	        { title: "No", field: "id", width: 80, formatter: "rownum" },
	        { title: "UUID", field: "name" },
	        { title: "랜덤값", field: "randomValue" },
	        { title: "시간", field: "now" }
	    ]
	});
		
		
	g_home.table = table;
}

function sampleAPI() {
    $.ajax({
        url: './sample',
        method: "GET",
		data:{
			test:'sample'
		},
        dataType: "json",
        success: function (res) {
            console.log("📦 sampleAPI response:", res);
        },
        error: function (err) {
            console.error("❌ sampleAPI 호출 실패:", err);
        }
    });
}

function swalTest(){
	Swal.fire('Swal 함수가 올바르게 작동함.');
}