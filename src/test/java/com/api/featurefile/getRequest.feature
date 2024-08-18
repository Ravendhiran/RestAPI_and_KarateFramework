Feature: To validate the GET end point 
  To validate the GET end point response

  Background: Setup the Base path
    Given url 'https://dev254312.service-now.com/now/table/'

  Scenario: To access the GET end point in JSON format
    Given path 'incident/c977a31b833b8210c8d696d6feaad370'
    
    And headers { Authorization:'Basic YWRtaW46b20kN01tS2dDNEgl', Accept:'application/json' }
    When method get 
    Then status 200
    Then print response
    And match response == 
    """
{
    "result": {
        "parent": "",
        "made_sla": "true",
        "caused_by": "",
        "watch_list": "",
        "upon_reject": "cancel",
        "sys_updated_on": "2024-08-09 09:34:38",
        "child_incidents": "0",
        "hold_reason": "",
        "origin_table": "",
        "task_effective_number": "INC0010003",
        "approval_history": "",
        "number": "INC0010003",
        "resolved_by": "",
        "sys_updated_by": "admin",
        "opened_by": {
            "link": "https://dev254312.service-now.com/api/now/table/sys_user/6816f79cc0a8016401c5a33be04be441",
            "value": "6816f79cc0a8016401c5a33be04be441"
        },
        "user_input": "",
        "sys_created_on": "2024-08-09 09:34:38",
        "sys_domain": {
            "link": "https://dev254312.service-now.com/api/now/table/sys_user_group/global",
            "value": "global"
        },
        "state": "1",
        "route_reason": "",
        "sys_created_by": "admin",
        "knowledge": "false",
        "order": "",
        "calendar_stc": "",
        "closed_at": "",
        "cmdb_ci": "",
        "delivery_plan": "",
        "contract": "",
        "impact": "3",
        "active": "true",
        "work_notes_list": "",
        "business_service": "",
        "business_impact": "",
        "priority": "5",
        "sys_domain_path": "/",
        "rfc": "",
        "time_worked": "",
        "expected_start": "",
        "opened_at": "2024-08-09 09:34:38",
        "business_duration": "",
        "group_list": "",
        "work_end": "",
        "caller_id": "",
        "reopened_time": "",
        "resolved_at": "",
        "approval_set": "",
        "subcategory": "",
        "work_notes": "",
        "universal_request": "",
        "short_description": "Laptop Service",
        "close_code": "",
        "correlation_display": "",
        "delivery_task": "",
        "work_start": "",
        "assignment_group": "",
        "additional_assignee_list": "",
        "business_stc": "",
        "cause": "",
        "description": "Laptop charging problem",
        "origin_id": "",
        "calendar_duration": "",
        "close_notes": "",
        "notify": "1",
        "service_offering": "",
        "sys_class_name": "incident",
        "closed_by": "",
        "follow_up": "",
        "parent_incident": "",
        "sys_id": "c977a31b833b8210c8d696d6feaad370",
        "contact_type": "",
        "reopened_by": "",
        "incident_state": "1",
        "urgency": "3",
        "problem_id": "",
        "company": "",
        "reassignment_count": "0",
        "activity_due": "",
        "assigned_to": "",
        "severity": "3",
        "comments": "",
        "approval": "not requested",
        "sla_due": "",
        "comments_and_work_notes": "",
        "due_date": "",
        "sys_mod_count": "0",
        "reopen_count": "0",
        "sys_tags": "",
        "escalation": "0",
        "upon_approval": "proceed",
        "correlation_id": "",
        "location": "",
        "category": "inquiry"
    }
}
  	"""
Scenario: To access the GET end point in JSON format
    Given path 'incident/e156979a53234610da863ee0a0490eb1'
    And headers { Authorization:'Basic YWRtaW46b20kN01tS2dDNEgl', Accept:'application/json' }
    When method get 
    Then status 200
    Then print response
    #updated incorrent number as INC0010220
    And match response != 
    """
    {
  "result": {
    "parent": "",
    "made_sla": "true",
    "caused_by": "",
    "watch_list": "",
    "upon_reject": "cancel",
    "sys_updated_on": "2024-07-24 19:30:13",
    "child_incidents": "0",
    "hold_reason": "",
    "origin_table": "",
    "task_effective_number": "INC0010220",
    "approval_history": "",
    "number": "INC0010220",
    "resolved_by": "",
    "sys_updated_by": "admin",
    "opened_by": {
      "link": "https://dev203779.service-now.com/api/now/table/sys_user/6816f79cc0a8016401c5a33be04be441",
      "value": "6816f79cc0a8016401c5a33be04be441"
    },
    "user_input": "",
    "sys_created_on": "2024-07-24 19:30:13",
    "sys_domain": {
      "link": "https://dev203779.service-now.com/api/now/table/sys_user_group/global",
      "value": "global"
    },
    "state": "1",
    "route_reason": "",
    "sys_created_by": "admin",
    "knowledge": "false",
    "order": "",
    "calendar_stc": "",
    "closed_at": "",
    "cmdb_ci": "",
    "delivery_plan": "",
    "contract": "",
    "impact": "3",
    "active": "true",
    "work_notes_list": "",
    "business_service": "",
    "business_impact": "",
    "priority": "5",
    "sys_domain_path": "/",
    "rfc": "",
    "time_worked": "",
    "expected_start": "",
    "opened_at": "2024-07-24 19:30:13",
    "business_duration": "",
    "group_list": "",
    "work_end": "",
    "caller_id": "",
    "reopened_time": "",
    "resolved_at": "",
    "approval_set": "",
    "subcategory": "",
    "work_notes": "",
    "universal_request": "",
    "short_description": "Laptop Service",
    "close_code": "",
    "correlation_display": "",
    "delivery_task": "",
    "work_start": "",
    "assignment_group": "",
    "additional_assignee_list": "",
    "business_stc": "",
    "cause": "",
    "description": "Laptop charging problem",
    "origin_id": "",
    "calendar_duration": "",
    "close_notes": "",
    "notify": "1",
    "service_offering": "",
    "sys_class_name": "incident",
    "closed_by": "",
    "follow_up": "",
    "parent_incident": "",
    "sys_id": "e156979a53234610da863ee0a0490eb1",
    "contact_type": "",
    "reopened_by": "",
    "incident_state": "1",
    "urgency": "3",
    "problem_id": "",
    "company": "",
    "reassignment_count": "0",
    "activity_due": "",
    "assigned_to": "",
    "severity": "3",
    "comments": "",
    "approval": "not requested",
    "sla_due": "",
    "comments_and_work_notes": "",
    "due_date": "",
    "sys_mod_count": "0",
    "reopen_count": "0",
    "sys_tags": "",
    "escalation": "0",
    "upon_approval": "proceed",
    "correlation_id": "",
    "location": "",
    "category": "inquiry"
  }
}
  	"""
    
  Scenario: To access the GET end point in JSON format
    Given path 'incident/e156979a53234610da863ee0a0490eb1'
    And headers { Authorization:'Basic YWRtaW46b20kN01tS2dDNEgl', Accept:'application/json' }
    When method get 
    Then status 200
    Then print response
    And match header Connection == 'keep-alive'
    And match response.result.sys_id == 'e156979a53234610da863ee0a0490eb1'
    And assert responseTime  
   
   