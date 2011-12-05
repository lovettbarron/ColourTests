//String text = "In Ersilia, to establish the relationships that sustain the city's life, the inhabitants stretch strings from the corners of the houses, white or black or gray or black-and-white according to whether they mark a relationdhip of blood, of trade, authority, agency. When the strings become so numerous that you can no longer pass among them, the inhabitants leave: the houses are dismantled; only the strings and their supports remain. From a mountainside, camping with their household goods, Ersilia's refugees look at the labyrinth of taut strings and poles that rise in the plain. That is the city of Ersilia still, and they are nothing. They rebuild Ersilia elsewhere. They weave a similar pattern of strings which they would like to be more complex and at the same time more regular than the other. Then they abandon it and take themselves and their houses still farther away. Thus, when traveling in the territory of Ersilia, you come upon the ruins of abandoned cities, without the walls which do not last, without the bones of the dead which the wind rolls away: spiderwebs of intricate relationships seeking a form.";

String text;

PImage spectrum;
int dotSize = 4;

void setup() {
//	size( 200, 600);
	size( 800,700);
	background( 0 );
	spectrum = loadImage("spectrum.jpg");
	text = loadStrings("calvino.txt")[0];
	noStroke();
	noLoop();
}

void draw() {
	int y = 0;
	int x = 0;
	print( "This poem is " + text.length() + " long");
	for( int i = 0; i < text.length(); i++ ) {
		x = x+dotSize;
		if(x > screen.width) {
			x = 0;
			y = y+dotSize;
		}
	 fill( sampleImage( spectrum, text.charAt(i)) );
	 ellipse( x, y, dotSize, dotSize );
	}
}

color sampleImage( PImage spectrum, char cchar ) {
	int translate = 0;
	color output = color(0,0,0);
	char cc = (char)cchar;
		if( cc == 'q' ) { translate = 0; } else
		if( cc == 'w' ) { translate = 1; } else
		if( cc == 'e' ) { translate = 2; } else
		if( cc == 'r' ) { translate = 3; } else
		if( cc == 't' ) { translate = 4; } else
		if( cc == 'y' ) { translate = 5; } else
		if( cc == 'u' ) { translate = 6; } else
		if( cc == 'i' ) { translate = 7; } else
		if( cc == 'o' ) { translate = 8; } else
		if( cc == 'p' ) { translate = 9; } else
		if( cc == 'a' ) { translate = 10; } else
		if( cc == 's' ) { translate = 11; } else
		if( cc == 'd' ) { translate = 12; } else
		if( cc == 'f' ) { translate = 13; } else
		if( cc == 'g' ) { translate = 14; } else
		if( cc == 'h' ) { translate = 15; } else
		if( cc == 'j' ) { translate = 16; } else
		if( cc == 'k' ) { translate = 17; } else
		if( cc == 'l' ) { translate = 18; } else
		if( cc == ';' ) { translate = 19; } else
		if( cc == '"' ) { translate = 20; } else
		if( cc == 'z' ) { translate = 21; } else
		if( cc == 'x' ) { translate = 22; } else
		if( cc == 'c' ) { translate = 23; } else
		if( cc == 'v' ) { translate = 24; } else
		if( cc == 'b' ) { translate = 25; } else
		if( cc == 'n' ) { translate = 26; } else
		if( cc == 'm' ) { translate = 27; } else
		if( cc == ',' ) { translate = 28; } else
		if( cc == '.' ) { translate = 29; } else
		if( cc == '?' ) { translate = 30; }
		else { translate = 29; }
		
		output = spectrum.pixels[ floor(map( translate, 0,30, 0, (spectrum.width*spectrum.height)-1 ) ) ];
		
		return output;
}