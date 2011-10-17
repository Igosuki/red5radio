package com.radioc.utils;

import java.io.PrintStream;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class PasswordGenerator
{
  private String password;
  private String salt = "secret";

  private Md5PasswordEncoder md5 = new Md5PasswordEncoder();

  public static void main(String[] args) {
    PasswordGenerator generate = new PasswordGenerator(args[0], args[1]);
    generate.run();
  }

  public PasswordGenerator(String password, String salt) {
    this.salt = salt;
    this.password = password;
  }

  public String getPassword() {
    return this.md5.encodePassword(this.password, this.salt).toString();
  }

  public void run() {
    System.out.println(this.md5.encodePassword(this.password, this.salt).toString());
  }
}