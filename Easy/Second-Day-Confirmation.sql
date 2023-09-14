SELECT user_id
FROM emails
JOIN texts
ON emails.email_id = texts.email_id
WHERE texts.action_date = emails.signup_date + INTERVAL '1 day'
AND texts.signup_action = 'Confirmed';
