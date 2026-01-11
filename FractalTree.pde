void setup()
{
    size(800,800);
    translate(0,750);
    drawFern(400000);

}
void drawFern(int it)
{
    background(0);
    stroke(0,255,0);
    float x = 0.5; // Start at the center
    float y = 0; // Start at the center
    float tempX, tempY;
    for(int i = 0; i < it; i++)
    {
        double r = random(1); // Use Processing's random function
        if(r <= 0.01) 
        {
            tempX = .5;
            tempY = 0.16 * y;
        }
        else if(r <= 0.08)
        {
            tempX = 0.2 * x - 0.26 * y + 0.4;
            tempY = 0.23 * x + 0.22 * y - 0.045;
        }
        else if(r <= 0.15)
        {
            tempX = -0.15 * x + 0.28 * y + 0.575;
            tempY = 0.26 * x + 0.24 * y - 0.086;
        }
        else
        {
            tempX = 0.85 * x + 0.04 * y + 0.075;
            tempY = -0.04 * x + 0.85 * y + 0.18;
        }
        x = tempX;
        y = tempY;
        point(x * 700, -(y * 700));
    }
}
