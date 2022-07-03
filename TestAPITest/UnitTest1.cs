using NUnit.Framework;

namespace TestAPITest
{
    public class Tests
    {
        private const string Expected = "Hello World!";

        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            var temp = "Hello World!";
            Assert.AreEqual(Expected, temp);
        }
    }
}