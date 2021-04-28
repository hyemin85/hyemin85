<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="content-language" content="ko">
<title>사업자 정보</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript">
	function fn_status_update() {
		document.frm.action = "<c:url value='/admin/business/businessInfo.do'/>";
		document.frm.jobGbn = "U";
		document.frm.submit();
	}
	function fn_update_page() {
		document.frm.action = "<c:url value='/admin/business/businessInfoUpdate.do'/>";
		document.frm.submit();
	}
</script>
</head>
<body >
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
	<!-- 전체 레이어 시작 -->
	<div id="wrap">
		<!-- header 시작   -->
		<div id="header_mainsize">
			<c:import url="/PageLink.do?link=main/inc/Header" />
		</div>
		<div id="left_menu">
			<c:import url="/PageLink.do?link=main/inc/Leftmenu" />
		</div>
		<!-- //header 끝 -->
		<!-- container 시작 -->
		<div id="container">
			<!-- content 시작 -->
			<div id="content">
				<!-- title -->
				<div>
					<div class="path">
						홈 > 관리자 > <span>사업자 정보</span>
					</div>
					<div class="titleBox">
						<span class="title">사업자 정보</span>
					</div>
				</div>
				<!-- //title -->
				<div class="tableBox">
					<form name="frm">
					
					<input type="hidden" name="dspCd" value="${results.dspCd}">
					<input type="hidden" name="dspStatus" value="${results.dspStatus}">
			
						<!-- table header-->
						<!-- //tableheader-->
						<!-- table content -->

						<div class="contentContainer">
							<div class="contentTransform">
								<div class="contentRowRel">
									<div class="contentRow">
										<div style="width: 40%">사업자 유형</div>
										<div style="width: 60%">${results.rewardTypeNm}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">사업자 명</div>
										<div style="width: 60%">${results.dspNm}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">사업자번호</div>
										<div style="width: 60%">${results.businessNo}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">사업자 상태</div>
										<div style="width: 60%">${results.statusNm}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">회원번호(ID)</div>
										<div style="width: 60%">${results.dspCd}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">비밀번호</div>
										<div style="width: 60%">*****</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">주소</div>
										<div style="width: 60%">${results.postNo}
											${results.roadAddr} ${results.numberAddr}
											${results.detailAddr}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">사업자 전화번호</div>
										<div style="width: 60%">${results.phone}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">대표자</div>
										<div style="width: 60%">${results.ceoNm}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">담당자 명</div>
										<div style="width: 60%">${results.chargeNm}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">담당자 연락처</div>
										<div style="width: 60%">${results.chargePhone}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">담당자 이메일</div>
										<div style="width: 60%">${results.chargeEmail}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">기타사항</div>
										<div style="width: 60%">${results.etc}</div>
									</div>
									
										<c:forEach var="dspInfo" items="${resultList}">
										<div class="contentRow">
										<div style="width: 40%">계약정보</div>
											<div style="width: 40%">${dspInfo.rewardTypeNm}</div>
											<div style="width: 20%">
											 <span class="editBtn">계약정보</span> 
											</div>
										</div>	
										</c:forEach>

									
									<div class="contentRow">
										<div style="width: 100%">
											<span class="editBtn"
												onClick="fn_update_page();">수정</span>
										</div>
									</div>

								</div>
							</div>

						</div>
					</form>
					<!-- //table content -->
				</div>

			</div>
			<!-- //content 끝 -->
		</div>
		<!-- //container 끝 -->

		<!-- footer 시작 -->
		<div id="footer">
			<c:import url="/PageLink.do?link=main/inc/Footer" />
		</div>
		<!-- //footer 끝 -->
	</div>
</body>
</html>
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete
