class Resume
  @@job_history = []

  define_method(:initialize) do |employer, title, description, start_date, end_date|
    @employer = employer
    @title = title
    @description = description
    @start_date = start_date
    @end_date = end_date

  end

  define_method(:employer) do
    @employer
  end

  define_method(:title) do
    @title
  end

  define_method(:description) do
    @description
  end

  define_method(:start_date) do
    @start_date
  end

  define_method(:end_date) do
    @end_date
  end

  define_method(:save_data) do
    @@job_history.push(self)
  end

  define_singleton_method(:all) do
    @@job_history
  end

  define_singleton_method(:clear) do
    @@job_history = []
  end

end
