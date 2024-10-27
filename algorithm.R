# G-quadruplicata Scoring Function based on consecutive G's and C's (matching Python logic of G4Hunter)
score_sequence <- function(sequence) {
  seq <- tolower(strsplit(sequence, "")[[1]])
  scores <- numeric(length(seq))
  
  i <- 1
  while (i <= length(seq)) {
    if (seq[i] == "g") {
      run_length <- 0
      while (i + run_length <= length(seq) && seq[i + run_length] == "g") {
        run_length <- run_length + 1
      }
      scores[i:(i + run_length - 1)] <- min(run_length, 4)
      i <- i + run_length
    } else if (seq[i] == "c") {
      run_length <- 0
      while (i + run_length <= length(seq) && seq[i + run_length] == "c") {
        run_length <- run_length + 1
      }
      scores[i:(i + run_length - 1)] <- -min(run_length, 4)
      i <- i + run_length
    } else {
      scores[i] <- 0
      i <- i + 1
    }
  }
  
  return(scores)
}

# Function to calculate window-based average scores
window_scores <- function(sequence, window_size = 25, threshold = 0) {
  seq_length <- nchar(sequence)
  if (seq_length < window_size) {
    stop("Sequence is shorter than the window size.")
  }
  base_scores <- score_sequence(sequence)
  scores <- numeric(seq_length - window_size + 1)
  
  for (i in seq_along(scores)) {
    window <- base_scores[i:(i + window_size - 1)]
    score <- mean(window)
    scores[i] <- ifelse(abs(score) >= threshold, score, 0)
  }
  
  return(scores)
}