namespace TreehouseDefense
{
    class Point
    {
        public readonly int X;
        public readonly int Y;
        
        public Point(int x, int y)
        {
            X = x;
            Y = y;
        }
        
        public int DistanceTo(int x, int y)
        {
            int xDiff = X - x;
            int yDiff = Y - y;
            
            int xDiffSquared = xDiff * xDiff;
            int yDiffSquared = yDiff * yDiff;
            
            
        }
    }
}