<h1>Flamerial</h1>
	<h2>Starting Point</h2>
		<p>An extremely low contrast theme that gives retro and cozy feelings.</p>
		<img src="./images/preview_light.png"/>
		<img src="./images/preview_dark.png"/>
		<p>In the images, Flamerial was used on the <a href="https://github.com/kovidgoyal/kitty">Kitty</a> terminal emulator with the <a href="https://github.com/skippyr/river_dreams">River Dreams</a> ZSH theme and <a href="https://github.com/be5invis/Iosevka">Iosevka</a> font (stylistic set <code>ss08</code>).</p>
	<h2>Installation And Usage</h2>
		<h3>Kitty</h3>
			<ul>
				<li>Copy the theme files from the <code>kitty</code> directory to the directory <code>~/.config/kitty/themes</code>. You may have to create that directory first.</li>
				<pre><code>mkdir -p ~/.config/kitty/themes</code></pre>
				<pre><code>mv ./kitty/* ~/.config/kitty/themes</code></pre>
				<li>If your version of Kitty has the <code>themes</code> kitten, you can apply the port using it. Just navigate to the <code>User</code> tab and apply it.</li>
				<pre><code>kitty +kitten themes</code></pre>
				<li>If your version of Kitty does not have it or you could not run it, you can apply the port manually by adding an include rule in the file <code>~/.config/kitty/kitty.conf</code>.</li>
				<ul>
					<li>For light theme:</li>
					<pre><code>include ./themes/flamerial_light.conf</code></pre>
					<li>For dark theme:</li>
					<pre><code>include ./themes/flamerial_dark.conf</code></pre>
				</ul>
				<p>If you have used other color palettes in Kitty, you may have to comment or remove include rules inside that file that may be including other color palettes.</p>
				<li>Reset your Kitty's session.</li>
			</ul>
	<h2>Issues And Contributions</h2>
		<p>Learn how to report issues, questions and ideas and how to contribute to this project by reading its <a href="https://skippyr.github.io/materials/pages/contributions_guideline.html">contributions guideline</a>.</p>
	<h2>License</h2>
		<p>Flamerial is released under the MIT License. You can refer to the license as the file <code><a href="https://github.com/skippyr/flamerial/blob/main/LICENSE">LICENSE</a></code> in the root directory of this repository.</p>
		<p>Copyright (c) 2023, Sherman Rofeman. MIT License.</p>

