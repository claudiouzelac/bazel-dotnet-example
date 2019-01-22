using System;
using System.Text;
using System.Collections.Generic;
using NUnit.Framework;

[TestFixture]
public class OnlyTest
{
    [Test]
    public void IntegerEquals() 
    {
        System.Console.WriteLine(System.Reflection.MethodBase.GetCurrentMethod.ToString());
        int a = 10;
        Assert.AreEqual(10, a);
    }

    [Test]
    public void StringEquals() 
    {
        System.Console.WriteLine(System.Reflection.MethodBase.GetCurrentMethod.ToString());
        string a = "a";
        Assert.AreEqual("a", a);
    }
}