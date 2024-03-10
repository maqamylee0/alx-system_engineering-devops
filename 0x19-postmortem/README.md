## Apache’s Nap with phpp
# Duration
The outage occurred from 8:00 am  to 12:00  (EAT).

# Impact
During the outage, the Apache service was down, leading to slow or inaccessible websites hosted on the affected server. Users experienced HTTP 500 errors and delays in loading web pages. Approximately 90% of users were affected by the outage.

# Root cause 
The root cause of the outage was a misconfiguration in the Apache server settings, specifically in the PHP configuration file (`/var/www/html/wp-settings.php`). This misconfiguration caused Apache to return HTTP 500 errors when processing requests.

# Timeline:

- 8:00 am The issue was detected when monitoring alerts indicated a spike in HTTP 500 errors.
- 9:00 am  Automated monitoring systems alerted the operations team to the increased error rate.
- Actions Taken: 
Engineers investigated the issue by examining Apache error logs and server configurations. Initially, assumptions were made that the errors were caused by high server load or network issues.
- Misleading Paths: 
Some initial investigations focused on server load and network connectivity, leading to delays in identifying the root cause.
- Escalation: 
The incident was escalated to the operations and development teams responsible for managing Apache servers and web applications.
- Resolution: 
The issue was resolved by correcting the misconfiguration in the Apache PHP settings file (`/var/www/html/wp-settings.php`).

# Root Cause and Resolution:

Root Cause:
The root cause of the issue was an incorrect string in the PHP configuration file (`wp-settings.php`). Specifically, the string "phpp" was present instead of "php", causing Apache to encounter syntax errors and return HTTP 500 errors when processing PHP scripts.

Resolution: 
The issue was fixed by editing the PHP configuration file (`wp-settings.php`) and replacing the incorrect string "phpp" with the correct string "php". This corrected the syntax error and restored proper functioning of the Apache server.

# Improvements/Fixes:  
- Strengthen monitoring systems to detect configuration errors and HTTP error rates.
- Implement automated configuration validation checks to prevent similar misconfigurations in the future.
- Enhance documentation and training for operations teams to quickly identify and resolve configuration issues.

# Tasks to Address the Issue: 
1. Implement automated configuration validation checks for critical server settings.
2. Conduct a review of PHP configuration files across all Apache servers to ensure consistency and accuracy.
3. Enhance monitoring alerts to provide more detailed information about HTTP error rates and configuration issues.
4. Schedule regular training sessions for operations teams on troubleshooting and resolving Apache configuration issues.

 # Conclusion:

The Apache outage was caused by a misconfiguration in the PHP settings file, resulting in HTTP 500 errors for users accessing websites hosted on the affected server. By promptly identifying and correcting the misconfiguration, normal service was restored, and preventative measures were implemented to mitigate similar incidents in the future.

