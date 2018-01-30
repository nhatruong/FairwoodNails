﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EyelashGallery.aspx.cs" Inherits="EyelashGallery_EyelashGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <head>
	<title>Eyelash Extension by Anna T</title>
	<meta charset="utf-8" />
	<meta name="viewport" id="jb-viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<meta name="description" content="" />

	<!-- START OPEN GRAPH TAGS-->
	<meta property="og:title" content="Eyelash Extension by Anna T" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="" />
	<meta property="og:image" content="" />
	<meta property="og:description" content="" />
	<!-- END OPEN GRAPH TAGS-->

	<style type="text/css">
	body {
		margin: 0px;
	}
	</style>
</head>
<body>
	<!--START JUICEBOX EMBED-->
	<script src="jbcore/juicebox.js"></script>
	<script>
	new juicebox({
		containerId: 'juicebox-container',
		galleryWidth: '100%',
		galleryHeight: '100%',
		backgroundColor: '#222222'
	});
	</script>
	<div id="juicebox-container"></div>
	<!--END JUICEBOX EMBED-->
</body>
</asp:Content>

