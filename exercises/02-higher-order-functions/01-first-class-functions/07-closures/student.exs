defmodule Shop do

  def discount(:standard), do: create_discounter(0)
  def discount(:bronze), do: create_discounter(5)
  def discount(:silver), do: create_discounter(10)
  def discount(:gold), do: create_discounter(20)

  defp create_discounter(discount) do
    fn x -> x * ((100 - discount) / 100) end
  end

end
