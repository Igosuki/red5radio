package com.radioc.annotations.validator;

import com.radioc.annotations.CheckEnum;
import com.radioc.utils.MediaConstants;
import com.radioc.utils.MediaConstants.MediaType;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CheckEnumValidator
  implements ConstraintValidator<CheckEnum, String>
{
  private MediaConstants.MediaType caseMode;

  public void initialize(CheckEnum constraintAnnotation)
  {
    this.caseMode = constraintAnnotation.value();
  }

  public boolean isValid(String object, ConstraintValidatorContext constraintContext)
  {
    return object == null;
  }
}