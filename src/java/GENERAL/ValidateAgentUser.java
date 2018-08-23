package GENERAL;

import nl.basjes.parse.useragent.UserAgent;
import nl.basjes.parse.useragent.UserAgentAnalyzer;

public class ValidateAgentUser {

  private static String tipo;

  public ValidateAgentUser(String userAgent) {

    tipo = "W";

    UserAgentAnalyzer uaa = UserAgentAnalyzer
            .newBuilder()
            .withField("OperatingSystemClass")
            .build();
    UserAgent agent = uaa.parse(userAgent);
    System.out.println(agent);
    if (agent.toString().contains("Mobile")) {
      tipo = "M";
    }
  }

  public String getTypeOs() {
    return tipo;
  }

}
