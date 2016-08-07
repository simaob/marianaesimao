{
  :en => {
    :date => {
      :formats => {
        :long => lambda { |time, _| "#{time.day.ordinalize} %B %Y" }
      }
    }
  }
}
