<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../userInclude/header.jsp" %>
<style>
	/* 타이틀 클릭시 해당페이지 이동*/
	h2 a.mainTitle:hover{
		color: #ED7D31;
	}
	/* 광고 */
	.cafeMuKKaAdd{
		margin-top: 25px;
	}
	.cafeMuKKaAdd .cafeMuKKaAddWrap{
		background-color: #ddd;
		width: 100%;
		height: 450px;
	}
	/* 테스트중입니다 */
	h1.typing-txt{
		display: none;
	}
	h1.typing {  
	/*       position: absolute;*/ 
     display: inline-block;
      animation-name: cursor; 
      animation-duration: 0.3s; 
      animation-iteration-count: infinite;
      margin-left: 300px;
    } 
    @keyframes cursor{ 
      0%{border-right: 3px solid #fff} 
      50%{border-right: 3px solid #000} 
      100%{border-right: 3px solid #fff} 
    }
    .navy{
    	color: navy;
    }	
	/* 파워링크 */
	.powerLinkArea {
		margin-top: 45px;
		margin-bottom: 45px;
	}

	.powerLinkArea h2 {
		text-align: center;
	}
	
	.powerLinkWrap ul {
		overflow: hidden;
		width: 1160px;
		margin: 0 auto;
	}
	
	.powerLinkWrap ul li {
		/* 임시 표시 */
		/* background-color: #ddd; */
		
		float: left;
		width: 200px;
		height: 260px;
		margin: 15px;
		position: relative;
	}
	
	.powerLinkWrap ul li img{
		width: 200px;
		height: 250px;
	}
 	.powerLinkWrap ul li .powerDummy{
		width: 100%;
		height: 250px;
		position: absolute;
		left: 0;
		top: 0;
		background-color: rgba(0,0,0,.4);
	}	
	.powerLinkEmphasis{ /* 파워링크 강조 */
		width: 100%;
		height: 250px;
		position: absolute;
		left: 0;
		top: 0;
		background-color: none;
	  	border: 10px solid #ED7D31;
	  	margin: -10px;			  	
	}			
	/* 공지사항 & 이벤트 */
	.noticeAndevent{
		margin-top: 45px;
		margin-bottom: 45px;
	}
	.noticeAndevent .neWrap ul{
		overflow: hidden;
		width: 100%;
		margin: 0 auto;
		padding-left: 15px;
	}
	.noticeAndevent .neWrap ul li{
		/* 임시 설정 */
		background-color: #ddd;
		width: 47%;
		height: 155px;
		float: left;
		margin: 10px;
	}
	/* 카페 리스트 */
	.cafeListArea {
		overflow: hidden;
		margin-bottom: 30px;
	}
	
	.newCafeImgs {
		/* 임시 설정 */
		/* background-color: #ddd; */
		
		width: 100%;
		height: 485px;
	}
	.newCafeImgs img{
		width: 100%;
		height: 485px;
	}	
	
	.newCafeTitleWrap {
		margin: 10px;
		overflow: hidden;
	}
	
	.newCafeTitleWrap .zoneIcon{
		margin-right: 10px;
	}
	.newCafeTitleWrap .newCafekeyword{
		padding: 5px 10px;
		color: #fff;
		font-weight: 700;
		float: left;
		border-radius: 5px;
	}
	.newCafeTitleWrap .cafeName {
		display: inline;
		font-size: 23px;
		font-weight: bold;
		margin-left: 15px;
		line-height: 34px;
	}
	
	.newCafeSmallImgs ul{
		overflow: hidden;
	}
	
	.newCafeSmallImgs ul li {
		/* 임시 설정 */
		background-color: #ddd;
		
		float: left;
		width: 31.5%;
		height: 190px;
		margin: 5px;
		margin-top: 0;
	}
	
	.newCafeSmallImgs ul li img{
		width: 100%;
		height: 190px;
	}
	
	.likeCafeTitle span {
		font-size: 16px;
		font-weight: 400;
	}
	
	.likeCafeList1 {
		overflow: hidden;
		margin-bottom: 15px;
	}
	
	.cafeList1 {
		/* 임시설정 */
		background-color: #ddd;	
		
		float: left;
		width: 50%;
		height: 234px;
	}
	
	.cafeList2-5 {
		float: right;
		width: 48%;
	}
	
	.cafeList2-5 ul {
		overflow: hidden;
	}
	
	.cafeList2-5 ul li {
		/* 임시 설정 */
		background-color: #ddd;
		
		float: left;
		width: 46%;
		height: 112px;
		margin: 5px;
		margin-top: 0;
	}
	
	.cafeList2-5 ul li:nth-of-type(n+3) {
		margin-top: 5px;
	}
	
	.likeCafeList2 ul{
		overflow: hidden;
	}
	
	.likeCafeList2 ul li {
		/* 임시 설정 */
		background-color: #ddd;
	
		float: left;
		width: 18%;
		height: 100px;
		margin: 5px;
		margin-top: 0;
	}
	
	/* 베스트 카페탐방기 */
	.baseCafeReview {
		margin-bottom: 30px;	
	}
	
	.baseCafeReview .baseList1-3 {
		text-align: center;
		padding: 15px;
	}
	
	.baseCafeReview .baseList1-3 ul {
		overflow: hidden;
		width: 80%;
		margin: 0 auto;
	}
	
	.baseCafeReview .baseList1-3 ul li {
		/* 임시설정 */
		/* background-color: #ddd; */
		
		float: left;
		width: 31%;
		height: 290px;
		margin: 9px;
		margin-top: 30px;
		border: 1px solid #A6A6A6;
	}
	.bestImgWrap{
		overflow: hidden;
		position: relative;
	}
	.baseCafeReview .baseList1-3 ul li img.thumbNailImg:nth-child(2n-1){
		width: 100%;
		height: 200px;
		transition: all 1s;
		transform-origin:left-top;
	}
	.baseCafeReview .baseList1-3 ul li img.thumbNailImg:nth-child(2n-1):hover{
		transform:scale(1.2);
	} 
	
	.baseCafeReview .baseList1-3 ul li.best1 {
		height: 320px;
		margin-top: 0;
	}
	.baseCafeReview .baseList1-3 ul li.best1 img.thumbNailImg{
		width: 100%;
		height: 230px;
		transition: all 1s;
		transform-origin:left-top;
		
	}
	.baseCafeReview .baseList1-3 ul li.best1 img.thumbNailImg:hover{
		transform:scale(1.2);
	}
	.rvRank_no{
		position: absolute;
		left: 0;
		top:0;
		width: 35px;
		height: 32px;
		background-color: #FF2424;
		color: white;
		font-weight: bold;
		font-size: 20px;
	}
	.bestTitleInfo{
		border-bottom: 1px solid #A6A6A6;
		padding-bottom: 8px; 
	}
	.bestTitleInfo p{
		font-size: 13px;
		letter-spacing: 1px;
	}
	.bestUser{
		width: 100%;
		font-weight: bold;
		font-size: 13px;
		padding: 2px;
	}
	.bestUser img{
		width: 20px;
		height: 20px;
	}
	p.rvBestTitleAll{
		font-weight: bold;
		letter-spacing: 2px;
		color: black;
		font-size: 18px;
	}
	.baseCafeReview .bestLists ul{
		overflow: hidden;
	}
	
	.baseCafeReview .bestLists ul li {
		/* 임시설정 */
		background-color: #ddd;
		
		float: left;
		width: 31.6%;
		height: 180px;
		margin: 10px;
		position: relative;
	}
	.baseCafeReview .bestLists ul li img{
		width: 100%;
		height: 180px;
	}
	.bestDummy{
		width: 100%;
		height: 180px;
		position: absolute;
		left: 0;
		top: 0;
		background-color: rgba(0,0,0,.3);
		text-align: center;
		color: white;
	}
	.bestDummy .reviewInfoWrap{
		width: 100%;
		margin-top: 65px;
	}
	.bestDummy h3:hover{
		text-decoration: underline;
	}
	.bestDummy p.reviewInfo{
		font-size: 13px;
		letter-spacing: 1px;
	}
	.rvRank{
		width: 35px;
		height: 28px;
		background-color: #ED7D31;
		color: white;
		font-weight: bold;
		text-align: center;
		position: absolute;
		left: 0;
		top: 0;
	}
	
	/* 카페추천 / 추천 랭킹 */
	.cafeRecommend {
		overflow: hidden;
		margin-bottom: 150px;
	}
	
	.cafeRecommend .newListImgs ul{
		overflow: hidden;
	}
	.cafeRecommend .RC_listImgWrap{
		width: 180px;
		height: 150px;
		overflow: hidden;
	}
	.cafeRecommend .newListImgs ul li {
		/* 임시설정 */
		/* background-color: #ddd; */
		
		float: left;
		width: 31.5%;
		height: 150px;
		margin: 5px;
	}
	
	.cafeRecommend .newListImgs ul li:nth-of-type(n+4) {
		margin-top: 5px;
	}
	.cafeRecommend .newListImgs ul li img{
		width: 180px;
		height: 150px;
		transition:all 1s;
		transform-origin:left-top;
	}
	
	.cafeRecommend .newListImgs ul li img:hover{
		transform:scale(1.2);
	}	
	
	.cafeRecommend .bestRankList .bestIcons {
		overflow: hidden;
	}
	
	.cafeRecommend .bestRankList .bestIcons .bestIcon {
		background-color: #ED7D31;
		padding: 5px 10px;
		float: left;
		margin-right: 10px;
		border-radius: 5px;
	}
	
	.cafeRecommend .bestRankList .bestIcons .bestIcon a {
		font-size: 18px;
		color: #fff;
	}
	
	.cafeRecommend .bestRankList .bestList {
		margin-top: 15px;
		line-height: 30px;
	}
	
	.cafeRecommend .bestRankList .bestList span {
		display: inline-block;
	}
	
</style>

	<div class="content container">
		<div class="cafeMuKKaAdd">
			<div class="cafeMuKKaAddWrap">
				<h1 class="typing-txt">
					#키워드 중심의 카페검색 Coffee MuKKa
				</h1>
				<h1 class="typing"></h1>
			</div>
		</div>
		
		<!-- 파워링크 : 해당카페번호꺼내서 해당이미지 1개씩 꺼내기 -->
		<div class="powerLinkArea">
			<h2><a href ="${pageContext.request.contextPath}/user/mukkaCafe/monthCafe" class="mainTitle">오늘 여기서 커피한잔 어때?</a></h2>
			<div class="powerLinkWrap">
				<ul>
				   <c:forEach var="powerList" items="${powerList}">
	 					<c:forEach var="powerImg" items="${powerImg}">		
							<c:if test="${powerImg.cafeNo.cafeNo == powerList.cafeNo }">
								<li>
									<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${powerList.cafeNo}">
										<img src="${pageContext.request.contextPath }/resources/images/sumnail/${powerImg.imageName}">
										<div class="powerDummy"></div>
									</a>
								</li>
							</c:if>
						</c:forEach>				
					</c:forEach>
				</ul>
				
			</div>
		</div>
		<!-- 공지사항 -->
		<div class="noticeAndevent">
			<div class="neWrap">
				<ul>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
		<!-- 카페 리스트 -->
		<div class="cafeListArea">
			<div class="newCafeList left">
				<h2 class="newCafeTitle bottomLine"><a href="#" class="mainTitle">N월 반짝반짝 신상카페</a></h2>
				
				<c:forEach var="newCafeList" items="${newCafeList}" begin="0" end="0" varStatus="status">	
					<div class="newCafeImgs">
						<c:forEach var="newCafeImg" items="${newCafeImg}" begin="0" end="0" varStatus="status">
							<c:if test="${newCafeImg.cafeNo.cafeNo == newCafeList.cafeNo }">
								<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${newCafeList.cafeNo}">
									<img src="${pageContext.request.contextPath }/resources/images/sumnail/${newCafeImg.imageName}">					
								</a>
							</c:if>
						</c:forEach>
					</div>
					<div class="newCafeTitleWrap">
	                    <!-- 위치 -->				
						<div class="zoneIcon zoneOrangeIcon">${newCafeList.zoneNo.zoneName}</div>
						<!-- 키워드 -->
						<c:choose>
							<c:when test="${newCafeList.themeNo.themeNo == 1}">
								<div class="date themeKeySmall newCafekeyword">#${board.themeNo.themeName}</div>
							</c:when>
							<c:when test="${newCafeList.themeNo.themeNo == 2}">
								<div class="view themeKeySmall newCafekeyword">#${newCafeList.themeNo.themeName}</div>
							</c:when>
							<c:when test="${newCafeList.themeNo.themeNo == 3}">
								<div class="ame newCafekeyword">#${newCafeList.themeNo.themeName}</div>
							</c:when>
							<c:when test="${newCafeList.themeNo.themeNo == 4}">
								<div class="dessert themeKeySmall newCafekeyword">#${newCafeList.themeNo.themeName}</div>
							</c:when>
							<c:when test="${newCafeList.themeNo.themeNo == 5}">
								<div class="dog themeKeySmall newCafekeyword">#${newCafeList.themeNo.themeName}</div>
							</c:when>																																								
							<c:otherwise>
								<div class="work themeKeySmall newCafekeyword">#${newCafeList.themeNo.themeName}</div>		
							</c:otherwise>
						</c:choose>
						<p class="cafeName">${newCafeList.cafeName}</p>
					</div>
				</c:forEach>
				
				<div class="newCafeSmallImgs">
					<ul>
						<c:forEach var="newCafeList" items="${newCafeList}" begin="1" end="3" varStatus="status">
							<c:forEach var="newCafeImg" items="${newCafeImg}" begin="1" end="3" varStatus="status">
							<c:if test="${newCafeImg.cafeNo.cafeNo == newCafeList.cafeNo }">
								<li>
									<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${newCafeList.cafeNo}">
										<img src="${pageContext.request.contextPath }/resources/images/sumnail/${newCafeImg.imageName}">				
									</a>
								</li>
							</c:if>
						</c:forEach>
						</c:forEach>
					</ul>
				</div>
				
			</div>
			
			<div class="mukkaLikeCafeList right">
				<h2 class="likeCafeTitle bottomLine"><a href="#" class="mainTitle">MuKKa人이 애정하는 그카페</a> <span>(2020.00.00 ~ 00.00)</span></h2>
				<div class="likeCafeList1">
					<div class="cafeList1"></div>
					<div class="cafeList2-5">
						<ul>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
				<div class="likeCafeList2">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
		
		<!-- 베스트 카페탐방기 -->
		<div class="baseCafeReview">
			<h2 class="Title bottomLine"><a href="#" class="mainTitle">MuKKa人이 전하는 생생 카페탐방기(BEST)</a></h2>
			<div class="baseList1-3 bottomLine">
				<ul>
					<!-- 2위 -->
					<c:forEach var="rvlist" items="${rvlist}" begin="1" end="1" varStatus="status">
						<c:forEach var="rvlistImg" items="${rvlistImg}" begin="1" end="1"
							varStatus="status">
							<c:if test="${rvlistImg.boardNo.boardNo == rvlist.boardNo }">
								<li>
								<a href="${pageContext.request.contextPath}/user/community/cafeReview/read?boardNo=${rvlist.boardNo}">
								<div class="bestImgWrap">
										<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rvlistImg.imageName}" class="thumbNailImg" alt="탐방기대표이미지" class="reviewBestImg" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
										<div class="rvRank_no">2</div>
								</div>
								<div class="bestTitleInfo">
									<h3>${rvlist.writingTitle}</h3>
									<p><b><span class="orange">${rvlist.zoneNo.zoneName}</span> · <span style="color:navy">#${rvlist.themeNo.themeName}</span> · 추천수 <span class="red">${rvlist.voteNumber}</span></b></p>
								</div>
								<div class="bestUser">
									<p>
										<img src="${pageContext.request.contextPath }/resources/images/${rvlist.userNo.userGrade.userGradeImage}" alt="등급아이콘">
										${rvlist.userNo.nick}(${rvlist.userNo.userId})
									</p>
								</div>								
								</a>
								</li>
							</c:if>
						</c:forEach>
					</c:forEach>
					<!-- 1위 -->
					<c:forEach var="rvlist" items="${rvlist}" begin="0" end="0" varStatus="status">
						<c:forEach var="rvlistImg" items="${rvlistImg}" begin="0" end="0"
							varStatus="status">
							<c:if test="${rvlistImg.boardNo.boardNo == rvlist.boardNo }">
								<li class="best1">
									<a href="${pageContext.request.contextPath}/user/community/cafeReview/read?boardNo=${rvlist.boardNo}">
									<div class="bestImgWrap">
										<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rvlistImg.imageName}" class="thumbNailImg" alt="탐방기대표이미지" class="reviewBestImg" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
										<div class="rvRank_no">1</div>														
									</div>
									<%-- <img src="${pageContext.request.contextPath }/resources/images/review_best_icon.png" class="bestIcon"> --%>
									<div class="bestTitleInfo">
										<h3>${rvlist.writingTitle}</h3>
										<p><b><span class="orange">${rvlist.zoneNo.zoneName}</span> · <span style="color:navy">#${rvlist.themeNo.themeName}</span> · 추천수 <span class="red">${rvlist.voteNumber}</span></b></p>
									</div>
									<div class="bestUser">
										<p>
											<img src="${pageContext.request.contextPath }/resources/images/${rvlist.userNo.userGrade.userGradeImage}" alt="등급아이콘">
											${rvlist.userNo.nick}(${rvlist.userNo.userId})
										</p>
									</div>
									</a>
								</li>
									
							</c:if>
						</c:forEach>
					</c:forEach>
					<!-- 3위 -->
					<c:forEach var="rvlist" items="${rvlist}" begin="2" end="2"
						varStatus="status">
						<c:forEach var="rvlistImg" items="${rvlistImg}" begin="2" end="2"
							varStatus="status">
							<c:if test="${rvlistImg.boardNo.boardNo == rvlist.boardNo }">
								<li>
								<a href="${pageContext.request.contextPath}/user/community/cafeReview/read?boardNo=${rvlist.boardNo}">
								<div class="bestImgWrap">
									<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rvlistImg.imageName}" class="thumbNailImg" alt="탐방기대표이미지"  class="reviewBestImg" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
									<div class="rvRank_no">3</div>								
								</div>
								<div class="bestTitleInfo">
									<h3>${rvlist.writingTitle}</h3>
									<p><b><span class="orange">${rvlist.zoneNo.zoneName}</span> · <span style="color:navy">#${rvlist.themeNo.themeName}</span> · 추천수 <span class="red">${rvlist.voteNumber}</span></b></p>
								</div>
								<div class="bestUser">
									<p>
										<img src="${pageContext.request.contextPath }/resources/images/${rvlist.userNo.userGrade.userGradeImage}" alt="등급아이콘">
										${rvlist.userNo.nick}(${rvlist.userNo.userId})
									</p>
								</div>								
								</a>								
								</li>
							</c:if>
						</c:forEach>
					</c:forEach>
				</ul>
				<p class="rvBestTitleAll"><i class="fas fa-crown"></i><em> 월간 BEST TOP3</em></p>
			</div>
			<div class="bestLists">
				<!-- 4위~15위 -->
				<ul>
						<c:forEach var="rvlist" items="${rvlist}" begin="3" end="14" varStatus="status">
							<c:forEach var="rvlistImg" items="${rvlistImg}" begin="3" end="14" varStatus="status">
							<c:if test="${rvlistImg.boardNo.boardNo == rvlist.boardNo }">
								<li>
									<a href="${pageContext.request.contextPath}/user/community/cafeReview/read?boardNo=${rvlist.boardNo}">
										<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rvlistImg.imageName}" class="thumbNailImg" alt="탐방기대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
										<div class="bestDummy">
											<div class ="reviewInfoWrap">
												<h3>${rvlist.writingTitle}</h3>
												<p class="reviewInfo">${rvlist.zoneNo.zoneName} · #${rvlist.themeNo.themeName} · 추천수 <b>${rvlist.voteNumber}</b></p>
											</div>
										</div>
										<div class="rvRank"></div>					
									</a>
								</li>
							</c:if>
							</c:forEach>
						</c:forEach>
				</ul>
			</div>
		</div>
		
		<!-- 카페추천 / 추천 랭킹 -->
		<div class="cafeRecommend">
			<div class="newList left">
				<h2 class="Title bottomLine"><a href ="${pageContext.request.contextPath}/user/community/cafeRecommend/" class="mainTitle">실시간 카페 추천</a></h2>
				<div class="newListImgs">
					<ul>
						<c:forEach var="board" items="${rclist}">
						<li>
							<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${board.boardNo}">
									<div class="RC_listImgWrap">
										<div class="RC_listImgContainer">
											<!-- 이미지 이름 꺼내서 삽입하기 -->
											<c:forEach var="img" items="${rclistImg}">
												<c:if test="${img.boardNo.boardNo == board.boardNo }">
													<img
														src="${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg" alt="카페대표이미지"
														onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
												</c:if>
											</c:forEach>
										</div>
									</div>						
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>

		<div class="bestRankList right">
				<h2 class="Title bottomLine"><a href="#" class="mainTitle">열혈 MuKKa人 </a><span>(2020.00.00 ~ 00.00)</span></h2>
				<div class="bestIcons">
					<div class="bestIcon"><a href="#">1-10</a></div>
					<div class="bestIcon"><a href="#">11-20</a></div>
					<div class="bestIcon"><a href="#">21-30</a></div>
				</div>
				<div class="bestList">
					<p>
						<span class="no w50">1.</span>
						<span class="icon w100">icon?</span>
						<span class="cafeName w150">이름</span>
						<span class="reviewCnt w100">리뷰 000</span>
					</p>
					<p>
						<span class="no w50">2.</span>
						<span class="icon w100">icon?</span>
						<span class="cafeName w150">이름</span>
						<span class="reviewCnt w100">리뷰 000</span>
					</p>
				</div>
			</div>
		</div>
		
	</div>
	
	<!-- infoBaner main에만 -->
	<div class="banerArea"></div>
<script>
	//파워링크 이미지 효과 로테이션 powerLinkEmphasis
	var first_dummy = $(".powerLinkWrap ul li div:eq(0)");
	var second_dummy = $(".powerLinkWrap ul li div:eq(1)");
	var third_dummy = $(".powerLinkWrap ul li div:eq(2)");
	var fourth_dummy = $(".powerLinkWrap ul li div:eq(3)");
	var fifth_dummy = $(".powerLinkWrap ul li div:eq(4)");	

 	function power_change(){
 		first_dummy.removeClass("powerDummy").addClass("powerLinkEmphasis").animate({"opacity":1}, 1000, function () {
			first_dummy.removeClass("powerLinkEmphasis").addClass("powerDummy").animate({"opacity":1},1000,function () {
				second_dummy.removeClass("powerDummy").addClass("powerLinkEmphasis").animate({"opacity":1}, 1000, function () {
					second_dummy.removeClass("powerLinkEmphasis").addClass("powerDummy").animate({"opacity":1},1000,function () {
						third_dummy.removeClass("powerDummy").addClass("powerLinkEmphasis").animate({"opacity":1}, 1000, function () {
							third_dummy.removeClass("powerLinkEmphasis").addClass("powerDummy").animate({"opacity":1},1000,function () {
								fourth_dummy.removeClass("powerDummy").addClass("powerLinkEmphasis").animate({"opacity":1}, 1000, function () {
									fourth_dummy.removeClass("powerLinkEmphasis").addClass("powerDummy").animate({"opacity":1},1000,function () {
										fifth_dummy.removeClass("powerDummy").addClass("powerLinkEmphasis").animate({"opacity":1}, 1000, function () {
											fifth_dummy.removeClass("powerLinkEmphasis").addClass("powerDummy");
										})
									})
								})
							})
						})
					})
				})
			})
		})
 	}
 	setInterval("power_change()", 10000);
 	power_change();
 	
	
	//추천카페 - 원본파일 불러오기(선명한 파일)
	$(".thumbNailImg").each(function(i, obj) {
		var file = $(this).attr("src");
		var start = file.substring(0,51);
		var end = file.substring(53);
		var fileName = start + end;
		$(this).attr("src", fileName);
		console.log(fileName);
	})
	
	//타이핑 테스트
	var typingBool = false; 
    var typingIdx=0; 
    var typingTxt = $(".typing-txt").text(); // 타이핑될 텍스트를 가져온다 
    typingTxt=typingTxt.split(""); // 한글자씩 자른다. 
    
    if(typingBool==false){ // 타이핑이 진행되지 않았다면 
       typingBool=true;    
       var tyInt = setInterval(typing,150); // 반복동작 
     } 
     
     function typing(){ 
       if(typingIdx<typingTxt.length){ // 타이핑될 텍스트 길이만큼 반복 
         $(".typing").append(typingTxt[typingIdx]); // 한글자씩 이어준다.
         typingIdx++; 
       } else{ 
          clearInterval(tyInt); //끝나면 반복종료 
       } 
     }
     
     //4위~15위
     for(var i=0;i<12;i++){ // 0,1,2,3,4,5,6,7,8,9
	$(".rvRank").eq(i).text(4+i);
	} 
     
</script>	
<%@ include file="../userInclude/footer.jsp" %>