using Assets.AltUnityTester.AltUnityDriver;
using fitlibrary;

namespace RandomGame.Tests
{
    public class Scene : DoFixture
    {
        public bool HasObjectWithName(string name)
        {
            try
            {
                var unityObject = TestEnvironment.Driver.WaitForObject(By.NAME, name, timeout: 5);

                return unityObject.enabled;
            }
            catch (WaitTimeOutException)
            {
                return false;
            }
        }
    }
}
