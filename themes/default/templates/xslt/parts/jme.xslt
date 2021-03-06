{% raw %}
<xsl:template match="part[@type='jme']" mode="typespecific">
	<xsl:if test="count(steps/part)>0"><localise>part.with steps answer prompt</localise></xsl:if>
	<input type="text" spellcheck="false" class="jme" data-bind="event: inputEvents, value: studentAnswer, valueUpdate: 'afterkeydown', autosize: true, disable: revealed"/>
	<span class="preview" data-bind="visible: showPreview &amp;&amp; studentAnswerLaTeX(), maths: showPreview ? '\\displaystyle{{'+studentAnswerLaTeX()+'}}' : '', click: focusInput"></span>
	<span class="feedback-icon" data-bind="css: scoreFeedback.iconClass, attr: scoreFeedback.iconAttr"></span>
</xsl:template>

<xsl:template match="part[@type='jme']" mode="correctanswer">
	<span class="correct-answer" data-bind="visibleIf: showCorrectAnswer, typeset: showCorrectAnswer">
		<localise>part.correct answer</localise>
		<input type="text" spellcheck="false" disabled="true" class="jme" data-bind="value: correctAnswer, autosize: true"/>
		<span class="preview" data-bind="maths: '\\displaystyle{{'+correctAnswerLaTeX+'}}'"></span>
	</span>
</xsl:template>
{% endraw %}
