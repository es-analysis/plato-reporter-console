
{{#each batch.reports as |report reportId| }}
{{#chalk "green"}}::: {{reportId}}{{/chalk}}
{{> (echo reportId)}}
{{/each}}
