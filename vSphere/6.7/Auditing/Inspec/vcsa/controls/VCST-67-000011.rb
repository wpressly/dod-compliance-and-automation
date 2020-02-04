control "VCST-67-000011" do
  title "The Security Token Service must be configured to limit access to
internal packages."
  desc  "The 'package.access' entry in the catalina.properties file implements
access control at the package level. When properly configured, a Security
Exception will be reported should an errant or malicious webapp attempt to
access the listed internal classes directly, or if a new class is defined under
the protected packages. The Security Token Service comes pre-configured with
the appropriate packages defined in 'package.access' and this configuration
must be maintained. "
  impact 0.5
  tag severity: "CAT II"
  tag gtitle: "SRG-APP-000141-WSR-000075"
  tag gid: nil
  tag rid: "VCST-67-000011"
  tag stig_id: "VCST-67-000011"
  tag fix_id: nil
  tag cci: "CCI-000381"
  tag nist: ["CM-7 a", "Rev_4"]
  tag false_negatives: nil
  tag false_positives: nil
  tag documentable: nil
  tag mitigations: nil
  tag severity_override_guidance: nil
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: "CM-7 a"
  tag check: "At the command prompt, execute the following command:

# grep \"package.access\"
/usr/lib/vmware-sso/vmware-sts/conf/catalina.properties

Expected result:

package.access=sun.,org.apache.catalina.,org.apache.coyote.,org.apache.tomcat.,org.apache.jasper.

If the output of the command does not match the expected result, this is a
finding."
  tag fix: "Navigate to and open
/usr/lib/vmware-sso/vmware-sts/conf/catalina.properties and ensure that the
'package.access' line is configured as follows:

package.access=sun.,org.apache.catalina.,org.apache.coyote.,org.apache.tomcat.,org.apache.jasper.
"
end
