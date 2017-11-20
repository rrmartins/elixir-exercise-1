defmodule Student do
  @moduledoc """
  Define a Student struct and functions to handle a student
  """
  defstruct name: nil, results: []

  @doc """
  Get the first name of Student.

  ## Parameters
  - `student` - A student struct

  ## Examples
  * joao = %Student{name: "João Joaquim"}
  * Student.frist_name(joao)
  * "João"
  """
  def first_name(student) do
    get_name_split(student.name)
    |> List.first
  end

  @doc """
  Get the last name of a Student

  ## Parameters
  - `student` - A student struct

  ## Examples
  * joao = %Student{name: "João Joaquim"}
  * Student.last_name(joao)
  * "Joaquim"
  """
  def last_name(student) do
    get_name_split(student.name)
    |> List.last
  end

  defp get_name_split(name) do
    name
    |> String.split
  end
end
