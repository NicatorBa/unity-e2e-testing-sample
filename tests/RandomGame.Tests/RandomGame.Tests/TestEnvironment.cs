using System;
using fitlibrary;

namespace RandomGame.Tests
{
    public class TestEnvironment : DoFixture
    {
        private static AltUnityDriver _driver;

        internal static AltUnityDriver Driver
        {
            get
            {
                if (_driver == null)
                {
                    throw new Exception($"Start the {nameof(TestEnvironment)} before use.");
                }

                return _driver;
            }
        }

        public void ConnectToGame()
        {
            if (_driver != null)
            {
                throw new Exception($"{nameof(TestEnvironment)} already started.");
            }

            _driver = new AltUnityDriver();
        }

        public void DisconnectFromGame()
        {
            Driver.Stop();
            _driver = null;
        }
    }
}
