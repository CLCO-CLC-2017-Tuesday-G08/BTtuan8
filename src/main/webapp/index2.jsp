<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<title>WELCOME TO ICSSE 2017</title>
<link href="CSS/show_img.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="Portlets/PanelBar/js/jquery-1.7.2.min.js"></script>
<script src="Scripts/Common.js" type="text/javascript"></script>
<script src="Scripts/PagingContent.js" type="text/javascript"></script>
<link rel="shortcut icon" type="image/png"
	href="Resources/Imagephoto/logo.png" />
<link href="Components/lightbox/css/lightbox.css" rel="stylesheet"
	type="text/css" />
<script src="Components/lightbox/js/lightbox.min.js"
	type="text/javascript"></script>
<link href="CSS/search_Article.css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
	function SearchProcess(event) {
		if (event.keyCode == 13) {
			OnSearch(document.getElementById('txtSearchArticle').value);
			return false;
		}
		return true;
	}
	function OnSearch(query) {
		PSCPortal.Services.CMS.SearchAndPaging(query, currentPage,
				OnSearchSuccess, OnSearchFailed);
	}

	function OnSearchSuccess(results, context, methodName) {
		var position = results.indexOf('_');
		totalRecords = results.substring(0, position);
		results = results.substring(position + 1);
		LoadContentAndPaging(results);
	}
	function OnSearchFailed(results, context, methodName) {
	}

	function retitleUrl(str) {
		str = str.replace(/^\s+|\s+$/g, ''); // trim
		str = str.toLowerCase();
		// remove accents, swap ñ for n, etc
		var from = "àáảãạăằắẳẵặâầấẩẫậđèéẻẽẹêềếểễệìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ·/_,:;";
		var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
		for (var i = 0, l = from.length; i < l; i++) {
			str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
		}
		str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
		.replace(/\s+/g, '-') // collapse whitespace and replace by -
		.replace(/-+/g, '-'); // collapse dashes
		return str;
	};

	function popunder() {
		$('a').not(
				'[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]')
				.each(
						function() {
							$(this).attr(
									'href',
									function(index, value) {
										if (value != undefined) {
											var index = value
													.indexOf("Default.aspx");
											if (index >= 0)
												return value = "/"
														+ value.substring(
																index,
																value.length);
										}
									});
						});
		var articleId = '' != '' ? '' : '';
		var topicId = '' != '' ? '' : '';
		var moduleId = '' != '' ? '' : '';
		if (articleId != '') {
			if (window.history.state == null) {
				if (articleId.indexOf("index.html") > -1)
					articleId = articleId.substr(0, articleId
							.indexOf("index.html"));
				window.history.replaceState({
					ArticleId : articleId
				}, "ArticleId", "/ArticleId/" + articleId + "/"
						+ retitleUrl(''));
			}
		}
		if (topicId != '') {
			if (window.history.state == null) {
				if (topicId.indexOf("index.html") > -1)
					topicId = topicId.substr(0, topicId.indexOf("index.html"));
				window.history.replaceState({
					TopicId : topicId
				}, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
			}
		}

	}
</script>
	<strong><span style="color: #0070c0;">WELCOME
																			TO ICSSE 2017</span></strong>
																</div> <span style="text-align: justify;"><br />
																	&nbsp; <span style="font-size: 16px;">&nbsp;Systems
																		Science and Engineering has emerged as a research
																		field that covers a wide spectrum of modern
																		technology. A system can be considered as a collection
																		of entities and their interrelationships gathered
																		together to form a whole greater than the sum of the
																		entities. It also involves people, organizations,
																		cultures, activities and interrelationships among
																		them. While systems composed of autonomous subsystems
																		are not new, increased data density, connectivity and
																		ubiquitous computational resources have increased
																		their interdependence and interaction complexity. This
																		has in turn made the already difficult job of
																		planning, developing and deploying complex systems
																		even more difficult.<br />
																</span></span><span style="font-size: 16px;"><span
																	style="font-size: 16px;"><span
																		style="text-align: justify; font-size: 16px;"><br />
																			&nbsp; &nbsp;Technology advancement not only provides
																			opportunities for improving system capabilities but
																			also introduces development risks that must be
																			weighed and managed. Thus, it is our goal to bring
																			together scholars from all areas to have a forum to
																			discuss, demonstrate and exchange research ideas in
																			the scope of system science and engineering.</span><br
																		style="text-align: justify;" /> <br
																		style="text-align: justify;" /> <span
																		style="text-align: justify; font-size: 16px;">&nbsp;
																			&nbsp;The International Conference on Systems Science
																			and Engineering 2017 (ICSSE 2017) is an international
																			conference that will take place in Ho Chi Minh City
																			during July 21-23, 2017. This event will provide a
																			great opportunity for scientists, engineers, and
																			practitioners from all over the world to present the
																			latest system design concepts, research results,
																			developments and applications, as well as to
																			facilitate interactions between scholars and
																			practitioners. ICSSE 2017 will feature plenary
																			speeches in emerging technology topics given by world
																			renowned scholars. The proceedings of ICSSE 2017 will
																			be published by the IEEE with EI indexing. In
																			addition, selected high-quality papers will be
																			published by special issues of SCI-indexed journals.</span>&nbsp;</span><br />
															</span> <br /> <strong>ICSSE <strong
																	style="text-align: justify;">PUBLISHED&nbsp;</strong>PROCEEDINGS
															</strong><br /> <br /> ICSSE 2010: <a
																href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=5540658"
																target="_blank">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=5540658</a><br />
																ICSSE 2012: <a
																href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6246741"
																target="_blank">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6246741</a><br />
																ICSSE 2014: <a
																href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6879759"
																target="_blank">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6879759</a><br />
																ICSSE 2016: <a
																href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=7548195"
																target="_blank">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=7548195</a><br />
															</td>
</body>
</html>