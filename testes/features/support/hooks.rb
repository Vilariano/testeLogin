World(Helper)

After '@deslogar_user' do
    user_logado.deslogar
end

# Depois de cada scenario ele tira uma screnshot e remove todos os espaços e virgulas
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    scenario_name = scenario.name.delete(',', '')
    scenario_name = scenario.name.delete('(', '')
    scenario_name = scenario.name.delete('}', '')
    scenario_name = scenario.name.delete('#', '')

    if scenario.failed?
        take_screenshot(scenario_name.downcase!, 'failed')
    else
        take_screenshot(scenario_name.downcase!, 'passed')
    end
end