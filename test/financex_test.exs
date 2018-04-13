defmodule FinancexTest do
  use ExUnit.Case
  doctest Financex

  @installments [
    1648.3,
    1648.2,
    1648.1,
    1648.1,
    1648,
    1647.9,
    1647.8,
    1647.7,
    1647.6,
    1647.5,
    1647.4,
    1647.3,
    1647.2,
    1647.1,
    1647,
    1646.9,
    1646.8,
    1646.7,
    1646.6,
    1646.5,
    1646.4,
    1646.3,
    1646.2,
    1646.1,
    1646,
    1645.9,
    1645.8,
    1645.7,
    1645.5,
    1645.4,
    1645.3,
    1645.2,
    1645.1,
    1644.9,
    1644.8,
    1644.7,
    1644.6,
    1644.4,
    1644.3,
    1644.2,
    1644,
    1643.9,
    1643.7,
    1643.6,
    1643.5,
    1643.3,
    1643.2,
    1643,
    1642.9,
    1642.7,
    1642.6,
    1642.4,
    1642.3,
    1642.1,
    1642,
    1641.8,
    1641.6,
    1641.5,
    1641.3,
    1641.1,
    1641,
    1640.8,
    1640.6,
    1640.4,
    1640.2,
    1640.1,
    1639.9,
    1639.7,
    1639.5,
    1639.3,
    1639.1,
    1638.9,
    1638.7,
    1638.5,
    1638.3,
    1638.1,
    1637.9,
    1637.7,
    1637.5,
    1637.3,
    1637,
    1636.8,
    1636.6,
    1636.4,
    1636.1,
    1635.9,
    1635.7,
    1635.4,
    1635.2,
    1635,
    1634.7,
    1634.5,
    1634.2,
    1633.9,
    1633.7,
    1633.4,
    1633.2,
    1632.9,
    1632.6,
    1632.3,
    1632.1,
    1631.8,
    1631.5,
    1631.2,
    1630.9,
    1630.6,
    1630.3,
    1630,
    1629.7,
    1629.4,
    1629.1,
    1628.8,
    1628.4,
    1628.1,
    1627.8,
    1627.4,
    1627.1,
    1626.8,
    1626.4,
    1626.1,
    1625.7,
    1625.4,
    1625,
    1624.6,
    1624.3,
    1623.9,
    1623.5,
    1623.1,
    1622.7,
    1622.3,
    1621.9,
    1621.5,
    1621.1,
    1620.7,
    1620.3,
    1619.8,
    1619.4,
    1619,
    1618.5,
    1618.1,
    1617.6,
    1617.2,
    1616.7,
    1616.2,
    1615.8,
    1615.3,
    1614.8,
    1614.3,
    1613.8,
    1613.3,
    1612.8,
    1612.3,
    1611.7,
    1611.2,
    1610.7,
    1610.1,
    1609.6,
    1609,
    1608.5,
    1607.9,
    1607.3,
    1606.7,
    1606.1,
    1605.5,
    1604.9,
    1604.3,
    1603.7,
    1603.1,
    1602.4,
    1601.8,
    1601.1,
    1600.5,
    1599.8,
    1599.1,
    1598.4,
    1597.8,
    1597.1,
    1596.3,
    1595.6,
    1594.9
  ]

  test "pass a loan value and a list of installments return the internal rate of return" do
    assert Financex.xirr(100_000, @installments) == 0.19185865874448033
  end
end
