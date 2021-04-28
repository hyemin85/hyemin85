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
	function fnInit() {
		var message = document.frm.message.value;
		if (message != "") {
			alert(message);
		}
		//getid(document.frm);
	}

	function fn_contract_popup(dscCp, rewardType) {
		form = document.frm;
		var retVal;
		var url = "<c:url value='/business/infoContract.do?dscCp=" + dscCp
				+ "&rewardType=" + rewardType + "'/>";

		window.open(url, "preview", "width=890px, height=500px;");
	}

	function fn_update_page() {
		document.frm.action = "<c:url value='/business/infoUpdate.do'/>";
		document.frm.submit();
	}
</script>
</head>
<body onLoad="fnInit();">
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
						홈 > 관리자 > <span>사업자 정보 수정</span>
					</div>
					<div class="titleBox">
						<span class="title">사업자 정보 수정</span>
					</div>
				</div>
				<!-- //title -->
				<div class="tableBox">
					<form:form commandName="dspInfoSo" id="dspInfoSo" name="dspInfoSo"
						method="post">

						<input type="hidden" name="dspStatus" value="${results.dspStatus}">
						<input type="hidden" name="message" value="${message}">
						<!-- table header-->
						<!-- //tableheader-->
						<!-- table content -->

						<!-- 수정항목 : 사업자명, 비밀번호, 주소, 사업자전화번호, 대표자, 기타사항  -->
						<div class="contentContainer">
							<div class="contentTransform">
								<div class="contentRowRel">
									<div class="contentRow">
										<div style="width: 40%">사업자 유형</div>
										<c:choose>
											<!-- 등록 -->
											<c:when test="${empty results.dspCd}">
												<div class="infoItems.value">
													<form:select path="rewardType" class="selectBox_s"
														onChange="javascript:fn_email_change(this)"
														style="width: 23%">
														<c:forEach var="code1" items="${code1.groupCd2}">
															<option selected value="${code1.groupNm2}"
																<c:if test="${code1.groupCd2 == ''}">selected="selected"</c:if>>${code1.groupNm2}</option>
														</c:forEach>
													</form:select>
												</div>
											</c:when>
											<!-- 수정 -->
											<c:otherwise>
												<div style="width: 60%">${results.rewardType}</div>
											</c:otherwise>
										</c:choose>
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
										<div class="value">${results.statusNm}</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">회원번호(ID)</div>
										<div style="width: 60%">${results.dspCd}</div>
										<select name="dspCd" title="대표자사업코드" class="select" id="dspCd">
											<option selected value=''>-- 전체 --</option>
											<c:forEach var="result" items="${bizC}"
												varStatus="status">
												<option value='${result.code}'
													<c:if test="${results == result.code ||result.code =='000'}">selected</c:if>>${result.codeNm}</option>
											</c:forEach>
										</select>
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
										<div class="value">
											<form:input path="ceoNm" maxlength="250"
												placeholder="대표자 명을 입력해주세요" value="${results.ceoNm}" />
										</div>
									</div>
									<div class="contentRow">
										<div style="width: 40%">담당자 명</div>
										<div style="width: 60%">${results.chargeNm}
									</div>
									<div class="contentRow">
										<div style="width: 40%">담당자 연락처</div>
										<div style="width: 60%">${results.phone}</div>
									</div>
								</div>
								<div class="contentRow">
									<div style="width: 40%">담당자 이메일</div>
									<div style="width: 60%">${results.email}</option>
	
									</div>
								</div>
								<div class="contentRow">
									<div style="width: 40%">기타사항</div>
									<div style="width: 60%">${results.etc}</div>
								</div>

								<div class="contentRow">
									<div style="width: 40%">계약정보</div>
									<div style="width: 40%"></div>
									<div style="width: 20%">
										<span class="editBtn"
											onClick="fn_contract_popup('<c:out value="${results.dspCd}"/>','<c:out value="${results.rewardType}"/>');">계약정보</span>
									</div>
								</div>

								<div class="contentRow">
									<div style="width: 100%">
										<span class="editBtn" onClick="fn_update_page();">수정</span>
									</div>
								</div>

							</div>
						</div>
				</div>
				</form:form>
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