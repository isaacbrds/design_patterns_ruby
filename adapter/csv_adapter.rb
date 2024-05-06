class LegacyCSVImporter
    def import(csv_file)
        puts "Importanto arquivo CSV: #{csv_file}"
    end
end

class CSVImporter
    def import(file_path)
        raise NotImplementedError, 'Esse método não foi implementado'
    end
end

class CSVImporterAdapter < CSVImporter
    def import(file_path)
        legacy_importer = LegacyCSVImporter.new
        legacy_importer.import(file_path)
    end
end

importer = CSVImporterAdapter.new
importer.import('dados.csv')