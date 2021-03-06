[#ftl][#include "/ftl/header.ftl"]

<p> <a href="/" >Menu</a> </p>

<table border="1" cellpadding="3">
	<tr><th> Song </th><th> Artist </th><th> Year </th><th> Votes </th><th> Plays </th></tr>
	[#list tracks as track]
		<tr>
			<td>
				<a href="/songs/one?id=${track.id?c}">${track.name}</a>
				[#if track.video]
					<img src="/images/video.png" height="25" alt="Video" />
				[/#if]
			</td>
			<td> <a href="/artists/one?name=${track.artist?url}" >${track.artist}</a> </td>
			<td align="right">
				[#if track.year > 0]
					<a href="/years/one?year=${track.year?c}">${track.year?c}</a>
				[#else]
					&nbsp;
				[/#if]
			</td>
			<td align="right">
				[#if track.voteCount > 0]
					${track.voteCount?c}
				[#else]
					&nbsp;
				[/#if]
			</td>
			<td align="right">
				[#if track.playCount > 0]
					${track.playCount?c}
				[#else]
					&nbsp;
				[/#if]
			</td>
		</tr>
	[/#list]
</table>

[#include "/ftl/footer.ftl"]
