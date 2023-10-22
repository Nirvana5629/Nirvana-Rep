using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.Model
{
    public class Map
    {
        private string id;
        private string routeNum;
        private string direction;
        private string routeType;
        private string positionNum;
        private string type;
        private string increaseDemand;
        private string optimazation;
        private double latitude;
        private double longitude;


        public string Id { get => id; set => id = value; }
        public string RouteNum { get => routeNum; set => routeNum = value; }
        public string Direction { get => direction; set => direction = value; }
        public string RouteType { get => routeType; set => routeType = value; }
        public string PositionNum { get => positionNum; set => positionNum = value; }
        public string Type { get => type; set => type = value; }
        public string IncreaseDemand { get => increaseDemand; set => increaseDemand = value; }
        public string Optimazation { get => optimazation; set => optimazation = value; }
        public double Latitude { get => latitude; set => latitude = value; }
        public double Longitude { get => longitude; set => longitude = value; }
    }
}
