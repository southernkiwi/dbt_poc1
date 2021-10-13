Steps :

	- Create a project
		https://docs.getdbt.com/docs/building-a-dbt-project/projects
	- Update .dbt\profiles.yml
		copy template from this website to .dbt\profiles.yml
		https://docs.getdbt.com/reference/warehouse-profiles/snowflake-profile#overview-of-dbt-snowflake
	- Profile name in .dbt\profiles.yml should match dbt_project.yml's profile
	- run dbt debug - test connection
	- run dbt run	- run project
	- run dbt test	- run test


Notes:
	-	how to start a dbt project either cloud or cli
		https://docs.getdbt.com/tutorial/setting-up

	- select from source tables in your models using the {{ source() }} function, helping define the lineage of your data
	
	From <https://docs.getdbt.com/docs/building-a-dbt-project/using-sources>
	
	- dbt-guide
	https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/



### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
