
# 1. Harden:
[[ansible]]
[[firewall]]
(what is [[iptables]])

# 2. Monitoring:
[[node exporter]] => [[prometeus]]
(with alert rules)

# 3. process running:
use [[pm2]] for process writing

# 4. Certificate
- ssllabs score (aim for A+)
- has to have domain
- has to have certificate ([[certbot]])
- add `hctc` header 
- redirect `http` requests to 443 with HTTP 301 code

# 5. Healthcheck
- healthcheck 
- restart policy



[[DevOps Using Docker]]