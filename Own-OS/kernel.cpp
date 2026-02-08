void write_string( int colour, const char *string )
{
    char *video = (char*)0xB8000;
    while( *string != 0 )
    {
        *video++ = *string++;
        *video++ = colour;
    }
}
//*(char*)0xb8000 = 'M';
extern "C" void _start(){
	write_string(1, "ALMA");
	*(char*)0xb8032 = 65;
	*(char*)0xb8034 = 'A';
	*(char*)0xb8036 = 0x41;
    return;
}

