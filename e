@import "../font/clear-sans.css";

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html,
body {
    font-family: "Clear Sans", "Helvetica Neue", Arial, sans-serif;
    color: #776e65;
    font-size: 18px;
    background: rgba(238, 228, 218, 0.5);
    overflow: hidden;
    height: 100%;
}

a {
    text-decoration: none;
    color: inherit;
    cursor: pointer;
}

.container {
    position: relative;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    width: 450px;
    height: 100vh;
    box-sizing: content-box;
}

.heading {
    margin: 20px 0;
}

.heading {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

h1.title {
    font-size: 74px;
    line-height: 66px;
    font-weight: bold;
}

.scores-container {
    float: right;
}

.score-container,
.best-container {
    float: left;
    padding: 3px 20px;
    background: #bbada0;
    border-radius: 3px;
    font-size: 25px;
    font-weight: bold;
    color: white;
    text-align: center;
}

.score-container {
    position: relative;
    margin-right: 15px;
    margin-bottom: 5px;
}

.score-container .title,
.best-container .title {
    font-size: 13px;
    color: #eee4da;
}

.score-addition {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    color: rgba(119, 110, 101, 0.9);
    z-index: 100;
    opacity: 0;
    font-size: 1rem;
}

.score-addition.action {
    animation: 2s moveup;
}

.above-game {
    font-size: 0.9rem;
}

.restart-btn {
    margin: 5px 0 0 5px;
    float: right;
    padding: 0 8px;
    background: #8f7a66;
    color: white;
    height: 40px;
    line-height: 40px;
    border-radius: 3px;
    font-weight: bold;
}

h2.subtitle {
    font-size: 1em;
}

.game-container {
    position: relative;
    margin-top: 15px;
    width: 450px;
    height: 450px;
    background: #bbada0;
    border-radius: 6px;
    touch-action: none;
}

.grid-container,
.tile-container,
.pop-container {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 426px;
    height: 426px;
}


.grid-row {
    display: flex;
    margin-bottom: 2%;
}

.grid-row,
.tile {
    height: 23.5%;
}

.grid-cell,
.tile {
    width: 23.5%;
    border-radius: 3px;
}

.grid-cell {
    margin-right: 2%;
    background: rgba(238, 228, 218, 0.35);
}

.grid-cell:nth-of-type(4n) {
    margin-right: 0;
}

.tile {
    position: absolute;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 53px;
    font-weight: bold;
    background: #eee4da;
    transition: all 0.15s ease;
}

.tile.new-tile {
    animation: 0.5s appear;
}

.tile.addition {
    animation: 0.3s add;
}

.tile[data-val] {
    color: #f9f6f2;
}

.tile[data-val="2"],
.tile[data-val="4"] {
    color: #776e65;
}

.tile[data-val="128"],
.tile[data-val="256"],
.tile[data-val="512"] {
    font-size: 45px;
}

.tile[data-val="1024"],
.tile[data-val="2048"] {
    font-size: 33px;
}

.tile[data-val="4"] {
    background: #ede0c8;
}

.tile[data-val="8"] {
    background: #f2b179;
}

.tile[data-val="16"] {
    background: #f59563;
}

.tile[data-val="32"] {
    background: #f67c5f;
}

.tile[data-val="64"] {
    background: #f65e3b;
}

.tile[data-val="128"] {
    background: #edcf72;
}

.tile[data-val="256"] {
    background: #edcc61;
    box-shadow: 0 0 30px 10px rgba(243, 215, 116, 0.31746), inset 0 0 0 1px rgba(255, 255, 255, 0.19048);
}

.tile[data-val="512"] {
    background: #edc850;
    box-shadow: 0 0 30px 10px rgba(243, 215, 116, 0.39683), inset 0 0 0 1px rgba(255, 255, 255, 0.2381);
}

.tile[data-val="1024"] {
    background: #edc53f;
    box-shadow: 0 0 30px 10px rgba(243, 215, 116, 0.47619), inset 0 0 0 1px rgba(255, 255, 255, 0.28571);
}

.tile[data-val="2048"] {
    background: #edc22e;
    box-shadow: 0 0 30px 10px rgba(243, 215, 116, 0.55556), inset 0 0 0 1px rgba(255, 255, 255, 0.33333);
}

.pop-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 100%;
    background: rgba(238, 228, 218, 0.8);
    z-index: 100;
    opacity: 0;
    transition: all 1s ease;
}

.winning-container p:nth-child(1){
    transform: rotate(90deg);
}

.winning-container.action p:nth-child(1){
    transform-origin: center;
    animation: winning 1.5s infinite;
}

.failure-container.action p:nth-child(1){
    transform-origin: center;
    animation: failure 5s infinite;
}

@keyframes winning{
    0%,25%,50%,75%,100%{
		transform: rotate(90deg) translateX(-5px);
	}
	12.5%{
		transform: rotate(80deg);
	}
	37.5%{
		transform: rotate(70deg);
	}
	62.5%{
		transform: rotate(100deg);
	}
	87.5%{
		transform: rotate(120deg);
	}
}

@keyframes failure{
    0%,25%,50%,75%,100%{
		transform: rotate(90deg) scale(0.7,1) rotateX(40deg);
	}
	12.5%{
		transform: rotate(90deg);
	}
	37.5%{
		transform: rotate(90deg);
	}
	62.5%{
		transform: rotate(90deg);
	}
	87.5%{
		transform: rotate(90deg);
	}
}

.pop-container.action {
    opacity: 1;
}

.pop-container p {
    font-size: 60px;
    font-weight: bold;
}

.footer {
    flex: 1;
    padding: 10px 0;
    text-align: center;
    display: flex;
    justify-content: space-around;
    align-items: flex-end;
    font-size: 0.75rem;
    color: #333;
    opacity: 0.7;
}
