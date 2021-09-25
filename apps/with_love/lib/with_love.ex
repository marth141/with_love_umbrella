defmodule WithLove do
  @moduledoc """
  WithLove keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias WithLove.Repo

  alias WithLove.{
    Customer,
    InsideSalesRep,
    FieldSalesRep,
    Project,
    Permit,
    Design,
    Proposal,
    ProjectManager,
    UtilityCompany
  }

  alias Ecto.Changeset

  def add_customer_to_inside_sales_rep(
        %Customer{} = customer,
        %InsideSalesRep{} = inside_sales_rep
      ) do
    customer
    |> Changeset.change(%{inside_sales_rep_id: inside_sales_rep.id})
    |> Repo.update()
  end

  def add_customer_to_inside_sales_rep(customer_id, %InsideSalesRep{} = inside_sales_rep)
      when is_integer(customer_id) do
    customer = Repo.get(Customer, customer_id)

    customer
    |> Changeset.change(%{inside_sales_rep_id: inside_sales_rep.id})
    |> Repo.update()
  end

  def add_customer_to_inside_sales_rep(customer_map, %InsideSalesRep{} = inside_sales_rep)
      when is_map(customer_map) do
    %Customer{}
    |> Changeset.change(customer_map)
    |> Changeset.put_change(:inside_sales_rep_id, inside_sales_rep.id)
    |> Repo.insert()
  end

  def add_customer_to_field_sales_rep(
        %Customer{} = customer,
        %FieldSalesRep{} = inside_sales_rep
      ) do
    customer
    |> Changeset.change(%{field_sales_rep_id: inside_sales_rep.id})
    |> Repo.update()
  end

  def add_customer_to_field_sales_rep(customer_id, %FieldSalesRep{} = inside_sales_rep)
      when is_integer(customer_id) do
    customer = Repo.get(Customer, customer_id)

    customer
    |> Changeset.change(%{field_sales_rep_id: inside_sales_rep.id})
    |> Repo.update()
  end

  def add_customer_to_field_sales_rep(customer_map, %FieldSalesRep{} = inside_sales_rep)
      when is_map(customer_map) do
    %Customer{}
    |> Changeset.change(customer_map)
    |> Changeset.put_change(:field_sales_rep_id, inside_sales_rep.id)
    |> Repo.insert()
  end

  def add_customer_to_project_manager(
        %Customer{} = customer,
        %ProjectManager{} = project_manager
      ) do
    customer
    |> Changeset.change(%{project_manager_id: project_manager.id})
    |> Repo.update()
  end

  def add_customer_to_project_manager(customer_id, %ProjectManager{} = project_manager)
      when is_integer(customer_id) do
    customer = Repo.get(Customer, customer_id)

    customer
    |> Changeset.change(%{project_manager_id: project_manager.id})
    |> Repo.update()
  end

  def add_customer_to_project_manager(customer_map, %ProjectManager{} = project_manager)
      when is_map(customer_map) do
    %Customer{}
    |> Changeset.change(customer_map)
    |> Changeset.put_change(:project_manager_id, project_manager.id)
    |> Repo.insert()
  end

  def add_project_to_customer(
        %Project{} = project,
        %Customer{} = customer
      ) do
    project
    |> Changeset.change(%{customer_id: customer.id})
    |> Repo.update()
  end

  def add_project_to_customer(project_id, %Customer{} = customer)
      when is_integer(project_id) do
    project = Repo.get(Project, project_id)

    project
    |> Changeset.change(%{customer_id: customer.id})
    |> Repo.update()
  end

  def add_project_to_customer(project_map, %Customer{} = customer)
      when is_map(project_map) do
    %Project{}
    |> Changeset.change(project_map)
    |> Changeset.put_change(:customer_id, customer.id)
    |> Repo.insert()
  end

  def add_permit_to_project(
        %Permit{} = permit,
        %Project{} = project
      ) do
    permit
    |> Changeset.change(%{project_id: project.id})
    |> Repo.insert_or_update()
  end

  def add_permit_to_project(permit_id, %Project{} = project)
      when is_integer(permit_id) do
    permit = Repo.get(Permit, permit_id)

    permit
    |> Changeset.change(%{project_id: project.id})
    |> Repo.update()
  end

  def add_permit_to_project(permit_map, %Project{} = project)
      when is_map(permit_map) do
    %Permit{}
    |> Changeset.change(permit_map)
    |> Changeset.put_change(:project_id, project.id)
    |> Repo.insert()
  end

  def add_design_to_project(
        %Design{} = design,
        %Project{} = project
      ) do
    design
    |> Changeset.change(%{project_id: project.id})
    |> Repo.insert_or_update()
  end

  def add_design_to_project(design_id, %Project{} = project)
      when is_integer(design_id) do
    design = Repo.get(Design, design_id)

    design
    |> Changeset.change(%{project_id: project.id})
    |> Repo.update()
  end

  def add_design_to_project(design_map, %Project{} = project)
      when is_map(design_map) do
    %Design{}
    |> Changeset.change(design_map)
    |> Changeset.put_change(:project_id, project.id)
    |> Repo.insert()
  end

  def add_proposal_to_project(
        %Proposal{} = proposal,
        %Project{} = project
      ) do
    proposal
    |> Changeset.change(%{project_id: project.id})
    |> Repo.insert_or_update()
  end

  def add_proposal_to_project(proposal_id, %Project{} = project)
      when is_integer(proposal_id) do
    proposal = Repo.get(Permit, proposal_id)

    proposal
    |> Changeset.change(%{project_id: project.id})
    |> Repo.update()
  end

  def add_proposal_to_project(proposal_map, %Project{} = project)
      when is_map(proposal_map) do
    %Proposal{}
    |> Changeset.change(proposal_map)
    |> Changeset.put_change(:project_id, project.id)
    |> Repo.insert()
  end

  def add_utility_company_to_project(
        %UtilityCompany{} = utility_company,
        %Project{} = project
      ) do
    utility_company
    |> Changeset.change(%{project_id: project.id})
    |> Repo.insert_or_update()
  end

  def add_utility_company_to_project(utility_company_id, %Project{} = project)
      when is_integer(utility_company_id) do
    utility_company = Repo.get(Permit, utility_company_id)

    utility_company
    |> Changeset.change(%{project_id: project.id})
    |> Repo.update()
  end

  def add_utility_company_to_project(utility_company_map, %Project{} = project)
      when is_map(utility_company_map) do
    %Proposal{}
    |> Changeset.change(utility_company_map)
    |> Changeset.put_change(:project_id, project.id)
    |> Repo.insert()
  end
end