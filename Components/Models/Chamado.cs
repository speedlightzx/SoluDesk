public class Chamado
{
    public int id { get; set; }
    public string title { get; set; } = string.Empty;
    public string description { get; set; } = string.Empty;
    public string category { get; set; } = string.Empty;
    public string status { get; set; } = string.Empty;

    public string priority { get; set; } = string.Empty;
    public User user { get; set; } = new();
    public Tecnico tecnico { get; set; } = new();
} 