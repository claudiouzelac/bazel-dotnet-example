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
        int a = 10;
        Assert.AreEqual(10, a);
    }

    [Test]
    public void StringEquals() 
    {
        string a = "a";
        Assert.AreEqual("a", a);
    }
}