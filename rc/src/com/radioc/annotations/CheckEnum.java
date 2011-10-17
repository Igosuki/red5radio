package com.radioc.annotations;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.radioc.annotations.validator.CheckEnumValidator;
import com.radioc.utils.MediaConstants;

@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy={CheckEnumValidator.class})
@Documented
public @interface CheckEnum
{
  public abstract String message();

  public abstract Class<?>[] groups();

  public abstract Class<? extends Payload>[] payload();

  public abstract MediaConstants.MediaType value();
}