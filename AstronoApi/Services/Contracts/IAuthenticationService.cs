using AstronoApi.Dtos;
using System.IdentityModel.Tokens.Jwt;

namespace Services.Contracts
{
    public interface IAuthenticationService
    {
        Task<string> Register(RegisterRequest request);
        Task<string> Login(LoginRequest request);
    }
}
