<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 어떤 증상이 있나요? </title>
    <meta name="description" content="어떤 증상이 있나요?">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body class="container">

    <a href=""></a>
    <article class="start">
        
        <h2 class="sub-title mt-3 text-center"><strong>나는 무슨 영양소가 필요할까?</strong></h2>
        <img class="updown-slash mt-5" src="img/vitamins_PNG39.png" alt="up-slash">
        <div class="start-cover mt-3 mb-3">
            <button type="button" class="btn-start btn btn-primary" onclick='start();'>시작하기</button>
        </div>
    </article>
    <article class="question">
        <div class="progress mt-5">
            <div class="progress-bar" role="progressbar" style="width: calc(100/14*1%)"></div>
        </div>
        <h2 id="title" class="question-content text-center mt-4 mb-4">문제</h2>
        <input id="type" type="hidden" value="EI">
        <div class="rectangle mt-5"></div>
        <button id="A" type="button" class="btn-answer btn btn-primary pt-4 pb-4">대답A</button>
        <button id="B" type="button" class="btn-answer btn btn-primary pt-4 pb-4">대답B</button>
        <div class="rectangle"></div>

        <article class="logo">
            <span class="mt-2 text-center copyright-text">Copyright 2021 EVENT EFFECT all rights reserved</span>
        </article>
       
        </article>
    
        <script type="text/javascript" src="//t1.daumcdn.net/kas/static/ba.min.js"></script>
        <input type="hidden" id="종합영양제" value="0">
        <input type="hidden" id="루테인" value="0">
        <input type="hidden" id="비타민E" value="0">
        <input type="hidden" id="비타민A" value="0">
        <input type="hidden" id="비타민B" value="0">
        <input type="hidden" id="비타민C" value="0">
        <input type="hidden" id="비타민D" value="0">
        <input type="hidden" id="오메가3" value="0">
        <input type="hidden" id="밀크씨슬" value="0">
        <input type="hidden" id="철분" value="0">
        <input type="hidden" id="마그네슘" value="0">
        <input type="hidden" id="아연" value="0">
        <input type="hidden" id="프로폴리스" value="0">
        <input type="hidden" id="유산균" value="0">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
    var List = function(){
        this.dataStore = [];
        this.pos = 0;
        this.listSize = 0;
    }
    
                                        // 1 종합영양제
                                        // 2 루테인
                                        // 3 비타민E
                                        // 4 비타민A 
                                        // 5 비타민B
                                        // 6 비타민C
                                        // 7 비타민D 
                                        // 8 오메가3
                                        // 9 밀크씨슬
                                        // 10 철분 
                                        // 11 마그네슘 
                                        // 12 아연
                                        // 13 프로폴리스
                                        // 14 유산균

            var num = 1;
            var q = {
                // x: { "title": "", "type": "", "A": "네 그렇습니다", "B": "아니요" },
                1: { "title": "눈의 피로감을 자주 느끼나요?", "type": "루테인", "A": "네 있습니다", "B": "딱히 느낀적은 없습니다" },

                2: { "title": "면역력이 약해진 것을 느끼거나 걱정하고 계신가요?", "type": "비타민E", "A": "네 그렇습니다", "B": "아니요" },

                3: { "title": "최근 야맹증, 안구건조, 피부각질을 겪고 있나요?", "type": "비타민A", "A": "네 그렇습니다", "B": "아니요" },
                
                4: { "title": "입 주위에 부스럼, 체중감소 우울증을 겪고 있나요?", "type": "비타민B", "A": "네 그렇습니다", "B": "아니요" },
               
                5: { "title": "쇠약감이나 잇몸출혈, 더딘 상처회복을 겪고 있나요?", "type": "비타민C", "A": "네 그렇습니다", "B": "아니요" },

                6: { "title": "근육 경련이나 골밀도에 이상이 있다는 진단을 받으셨나요?", "type": "비타민D", "A": "네 그렇습니다", "B": "아니요" },

                7: { "title": "손 끝이 트고 갈라지거나 손발톱이 잘 부러지나요?", "type": "오메가3", "A": "네 그렇습니다", "B": "아니요" },

                8: { "title": "술자리를 자주 갖는 편인가요??", "type": "밀크씨슬", "A": "가끔 있습니다", "B": "아니요" },

                9: { "title": "입 주변이 갈라지거나 편두통이 자주 생기나요?", "type": "마그네슘", "A": "네 그렇습니다", "B": "아니요" },

                10: { "title": "피로감이나 잔병치레가 있나요?", "type": "철분", "A": "있어요", "B": "없어요" },

                11: { "title": "가족 중에 성장기의 자녀가 있나요?", "type": "아연", "A": "네 그렇습니다", "B": "아니요" },

                12: { "title": "항산화제를 추천받고 싶으신가요?", "type": "프로폴리스", "A": "네 그렇습니다", "B": "아니요" },

                13: { "title": "변비증상이나 복통이 있나요?", "type": "유산균", "A": "네 그렇습니다", "B": "아니요" }

            };

            var list1 = [];
            var list2 = [];
        
        function start() {
            $(".start").hide();
            $(".question").show();
            next();
        }

        $("#A").click(function () {
            var type = $("#type").val();
            console.log("type = " + type)
            var preValue = $("#" + type).val();
            $("#" + type).val(parseInt(preValue) + 1);
           
            if( type == "루테인"){
                list1.push("2");
                list2.push("루테인");
            };
            if( type == "비타민E"){
                list1.push("3");
                list2.push("비타민E");
            };
            if( type == "비타민A"){
                list1.push("4");
                list2.push("비타민A");
            };
            if( type == "비타민B"){
                list1.push("5");
                list2.push("비타민B");
            };
            if( type == "비타민C"){
                list1.push("6");
                list2.push("비타민C");
            };
            if( type == "비타민D"){
                list1.push("7");
                list2.push("비타민D");
            };
            if( type == "오메가3"){
                list1.push("8");
                list2.push("오메가3");
            };
            if( type == "밀크씨슬"){
                list1.push("9");
                list2.push("밀크씨슬");
            };
            if( type == "철분"){
                list1.push("10");
                list2.push("철분");
            };
            if( type == "마그네슘"){
                list1.push("11");
                list2.push("마그네슘");
            };
            if( type == "아연"){
                list1.push("12");
                list2.push("아연");
            };
            if( type == "프로폴리스"){
                list1.push("13");
                list2.push("프로폴리스");
            };
            if( type == "유산균"){
                list1.push("14");
                list2.push("유산균");
            };
            
            next();
        });

        $("#B").click(function () {
            next();
        });

        function next() {
            if (num == 14) {
                $(".question").hide();
                $(".result").show();

            	location.href="survey_show?data1="+list1+"&data2="+list2;
        }
            else {
            $(".progress-bar").attr('style', 'width: calc(100/14*' + num + '%)');
            $("#title").html(q[num]["title"]);
            $("#type").val(q[num]["type"]);
            $("#A").html(q[num]["A"]);
            $("#B").html(q[num]["B"]);
            num++;
            
            
        }
       }
        
        </script>
</body>
</html>