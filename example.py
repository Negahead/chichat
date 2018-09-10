from interface import Agents
import os


agents = Agents("/home/will/Documents/nmt_model")

agent_id = '0'

agents.deploy_agent(agent_id=agent_id, reset=True)

msg = 'The science behind a climate headline'

print(agents.send(msg, agent_id))