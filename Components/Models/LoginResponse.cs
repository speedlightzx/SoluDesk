public class LoginResponse
{
    public string token { get; set; } = string.Empty;
    public string message { get; set; } = string.Empty;
    public string url { get; set; } = string.Empty;
    public bool administrator { get; set; }
    public string error { get; set; } = string.Empty;
}