use Mix.Config

config :datasets_interface,
       task_supervisor: Datasets.Task.Supervisor,
       node: :"models@ip-192-168-1-150"
