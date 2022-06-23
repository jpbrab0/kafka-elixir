defmodule ElixirKafkaService do
  @topic "asgardu_company"

  def create_company(id, company_name) do
    client_id = :asgardu
    hosts = [localhost: 9092]

    :ok = :brod.start_client(hosts, client_id)
    :ok = :brod.start_producer(client_id, @topic, [])

    :brod.produce(client_id, @topic, 0, _key = "", %{id: id, company_name: company_name} |> Jason.encode!())
  end
end
