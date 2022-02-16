from charset_normalizer import from_path, normalize

results = from_path('original\BIOMD0000000424\BIOMD0000000424_url.xml')

best = str(results.best())

normalize('original\BIOMD0000000424\BIOMD0000000424_url.xml')
