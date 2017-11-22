namespace TreehouseDefense
{
    class Invader
    {
        private readonly Path _path;
        private int _pathStep = 0;
        
        public MapLocation Location => _path.GetLocationAt(_pathStep);
        
        public Invader(Path path)
        {
            _path = path;
        }
        
        public void Move() => _pathStep += 1;
    }
}