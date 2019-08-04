defmodule Heap.Guardian do
  use Guardian, otp_app: :heap

  def subject_for_token(resource, _claims) do
    sub = to_string(resource.id)
    {:ok, sub}
  end
  def subject_for_token(_resource, _claims) do
    {:error, :reason_for_error}
  end

  def resource_from_claims(claims) do
    id = claims["sub"]
    resource = Heap.get_resource_by_id(id)
    {:ok, resource}
  end
  def resource_from_claims(_claims) do
    {:error, :reason_for_error}
  end

end
