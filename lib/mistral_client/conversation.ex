defmodule MistralClient.Conversation do
  @moduledoc false
  alias MistralClient.Client
  alias MistralClient.Config

  @base_url "/v1/conversations"

  def url(), do: @base_url

  def fetch(params, config \\ %Config{}) do
    url()
    |> Client.api_post(params, config)
  end
end
