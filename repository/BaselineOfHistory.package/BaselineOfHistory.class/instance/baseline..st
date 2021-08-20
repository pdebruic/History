baselines
baseline: spec
<baseline>
	spec
		for: #common
		do: [ spec
				package: 'History-Core';
				package: 'History-Tests'
					with: [ spec requires: #('History-Core') ].
			spec
				group: 'default' with: #('History-Tests');
				group: 'Core' with: #('History-Core');
				group: 'core' with: #('History-Core') ].
	spec
		for: #pharo
		do: [ spec
				package: 'History-Pharo-Core'
				with: [ spec requires: #('History-Core') ].
			spec
				group: 'default' with: #('History-Pharo-Core' 'History-Tests');
				group: 'Core' with: #('History-Pharo-Core');
				group: 'core' with: #('History-Pharo-Core') ].
	spec
		for: #gemstone
		do: [ spec
				package: 'HistoryGemStone'
				with: [ spec requires: #('History-Core') ].
			spec
				group: 'default' with: #('HistoryGemStone' 'History-Tests');
				group: 'Core' with: #('HistoryGemStone');
				group: 'core' with: #('HistoryGemStone') ]