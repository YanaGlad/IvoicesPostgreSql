import org.flywaydb.core.Flyway;

//Created by Yana Gladkikh telegram @YanaGlad12
public class Main {
    public static void main(String[] args) {
        final Flyway flyway = Flyway.configure().dataSource("jdbc:postgresql://localhost:5432/lessons", "postgres", "postgres")
                .locations("db")
                .load();
        flyway.clean();
        flyway.migrate();
    }
}
