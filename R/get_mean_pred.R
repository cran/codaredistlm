


get_mean_pred <- function(lm_obj, newdata, alpha = 0.05) {

  m_pred <- predict.lm(lm_obj, newdata = newdata, interval = "confidence", level = 1 - alpha)

  m_pred <- cbind(newdata, m_pred)

  message(
    "---\nThe geometric mean composition, 'average' covariates, the ilr coords of the mean composition, ",
    "and the predicted outcome value (`fit`) with ", 100 * (1 - alpha), "% confidence interval are:\n",
    sep = ""
  )
  message(paste(kable(m_pred), collapse = "\n"))
  message("---\n")

  return(m_pred)

}
