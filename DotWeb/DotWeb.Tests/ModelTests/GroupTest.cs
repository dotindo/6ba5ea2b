using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DotWeb.Tests.ModelTests
{
    [TestClass]
    public class GroupTest
    {
        [TestMethod]
        public void Group_initial_condition_test()
        {
            var group = new ModuleGroup();
            Assert.AreEqual(group.Modules.Count, 0);
            Assert.IsTrue(group.ShowInLeftMenu);
        }

        [TestMethod]
        public void Group_ToString_should_match_name_property()
        {
            var group = new ModuleGroup();
            group.Name = "Test App";
            group.Title = "Test App";
            group.OrderNo = 1;

            Assert.AreEqual(group.Name, group.ToString());
        }
    }
}
