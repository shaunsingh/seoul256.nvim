local seoul256 = {

	white =         '#dfe0e0',
	gray =          '#75767c',
	black =         '#75767c',
	red =           '#a07474',
	green =         '#678568',
	yellow =        '#c3a769',
	paleblue =      '#88a787',
	cyan =          '#67a9aa',
	blue =          '#84a4c1',
	purple =        '#c66d86',
	orange =        '#c78a69',
	pink =          '#d0a39f',

	bg =            '#4c4c4c',
	bg_alt =        '#545454',
	fg =            '#dfe0e0',
	text =          '#75767c',
	comments =      '#678667',
	selection =     '#347474',
	contrast =      '#d4d4d4',
	active =        '#545250',
	border =        '#414863',
	line_numbers =  '#8a896a',
	highlight =     '#347474',
	disabled =      '#414863',
	cursor =        '#d8d8d8',
	accent =        '#ce8f6b',

	error =         '#a07474',
	link =          '#67a9aa',

	none =          'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.seoul256_contrast == false then
    seoul256.sidebar = seoul256.bg
    seoul256.float = seoul256.bg
else
    seoul256.sidebar = seoul256.bg_alt
    seoul256.float = seoul256.bg_alt
end

return seoul256
